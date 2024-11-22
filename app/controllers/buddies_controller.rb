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
      redirect_to root_path, notice: 'Buddy was successfully created.'
    else
      flash[:alert] = 'Buddy was not created !'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  private

  def set_buddies
    @buddies_skill = params[:skill] ||= ""
    @buddies = params[:skill].present? ? Buddy.where(skill: params[:skill]) : Buddy.all
  end

  def buddy_params
    params.require(:buddy).permit(:first_name, :last_name, :email, :address, :skill, :description, :price, :image)
  end
end
