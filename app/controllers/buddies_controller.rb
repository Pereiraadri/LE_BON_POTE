class BuddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  before_action :set_buddies, only: :index
  def new
    @buddy = Buddy.new
  end

  def index
    @buddies = Buddy.all
    @markers = @buddies.geocoded.map do |buddy|
      {
        lat: buddy.latitude,
        lng: buddy.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { buddy: buddy }),
        marker_html: render_to_string(partial: "marker", locals: { buddy: buddy })
      }
    end

    return unless params[:skill].present?

    @buddies = @buddies.where(skill: params[:skill])
  end

  def create
    @buddy = Buddy.new(buddy_params)
    @buddy.user = current_user
    if @buddy.save
      redirect_to root_path, alert: 'Buddy was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  private

  def set_buddies
    if params[:skill].present?
      @buddies = @buddies.where(skill: params[:skill])
    else
      @buddies = []
    end
  end

  def buddy_params
    params.require(:buddy).permit(:first_name, :last_name, :email, :address, :skill, :description, :price, :image)
  end
end
