class WorkoutmenusController < ApplicationController
  # autocomplete :workoutmenu, :menu, full: true
  before_action :authenticate_user!
  
  def confirm
  end
  
  def index
    @workoutmenus = current_user.workoutmenus.search(params[:search])
  end
  
  def new
    @workoutmenu = current_user.workoutmenus.new
  end
  
  def create
    @workoutmenus = current_user.workoutmenus.create(workoutmenu_params)
    redirect_to action: 'index'
  end
  
  def destroy
    current_user.workoutmenus.find(params[:id]).destroy
    @workoutmenus = current_user.workoutmenus.all
    redirect_to action: 'index'
  end
  
  def edit
    @workoutmenu = current_user.workoutmenus.find(params[:id])
  end
  
  def update
    @workoutmenu = current_user.workoutmenus.find(params[:id])
    @workoutmenu.update(workoutmenu_params)
    redirect_to action: 'index'
  end
  
  private
  def workoutmenu_params
    params.require(:workoutmenu).permit(:settype, :weight, :reps, :menu, :user_id, :workoutdate_id, :created_at)
  end
end