class BuddiesController < ApplicationController
  def new
      @buddy = buddy.new
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
    params.require(:buddy).permit(:name, :email, :phone, :other_attributes)
  end
end
