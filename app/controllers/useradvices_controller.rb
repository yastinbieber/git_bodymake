class UseradvicesController < ApplicationController
  def new
    @useradvice = Useradvice.new
  end
  
  def create
    @useradvice = Useradvice.create(purpose: useradvice_params[:purpose], frequency: useradvice_params[:frequency], user_id: current_user.id)
    redirect_to  controller: :idealweights, action: :new
  end
  
  private
  def useradvice_params
    params.require(:useradvice).permit(:purpose, :frequency, :user_id)
  end
end
