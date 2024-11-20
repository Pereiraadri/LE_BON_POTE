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
    @buddy.user = current_user
    if @buddy.save
      redirect_to root_path, notice: 'Buddy was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @buddy = Buddy.find(params[:id])
  end

  private

  def buddy_params
    params.require(:buddy).permit(:first_name, :last_name, :email, :address, :skill, :description, :price)
  end
end
