class UsersController < ApplicationController
  
  def index
    # @workoutmenus = Workoutmenu.all
    @workoutmenus = params[:search].present? ? current_user.workoutmenus.where('created_at LIKE(?)', "%#{params[:search]}%"): []
  end
  
  def show
    @user = User.find(params[:id])
    @username = current_user.username
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end
  
  private
  def user_params
    params.require(:user).permit(:image, :username, :text, :sex, :area, :birthday, :age,
    idealweight_attributes: [:id, :height, :weight, :targetweight, :exerciselevel, :period, :basemetabolism, :kcalburned, :minusweight, :minuskcal, :kcalintake, :intakeproteingram, :intakeproteinkcal, :intakefatgram, :intakefatkcal, :intakecarbogram, :intakecarbokcal, :user_id])
  end
end
