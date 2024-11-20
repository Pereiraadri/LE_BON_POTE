class BuddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def new
    @buddy = Buddy.new
  end

  def index
    @buddies = Buddy.all
  end

  def create
    @buddy = Buddy.new(buddy_params)
    if @buddy.save
      redirect_to @buddy, notice: 'Buddy was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  private

  def buddy_params
    params.require(:buddy).permit(:fist_name, :last_name, :email, :address, :skill, :description)
  end
end
