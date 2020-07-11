class AdvicediariesController < ApplicationController
  
  def confirm
  end
  
  def index
    @advicediaries = current_user.advicediaries.search(params[:search])
    @advicemenus = Advicemenu.all
    @sum_column = current_user.advicediaries.size
    @advicemenu_a = Advicemenu.where(group: "A")
    @advicemenu_b = Advicemenu.where(group: "B")
    @advicemenu_c = Advicemenu.where(group: "C")
    @advicemenu_d = Advicemenu.where(group: "D")
    @advicemenu_e = Advicemenu.where(group: "E")
    @advicemenu_f = Advicemenu.where(group: "F")
    @advicemenu_g = Advicemenu.where(group: "G")
    @advicemenu_h = Advicemenu.where(group: "H")
    @advicemenu_i = Advicemenu.where(group: "I")
    @advicemenu_j = Advicemenu.where(group: "J")
    @advicemenu_k = Advicemenu.where(group: "K")
    @advicemenu_l = Advicemenu.where(group: "L")
    @advicemenu_m = Advicemenu.where(group: "M")
    @advicemenu_n = Advicemenu.where(group: "N")
    @advicemenu_o = Advicemenu.where(group: "O")
  end
  
  def choice
    @advicemenu_a = Advicemenu.where(group: "A")
    @advicemenu_b = Advicemenu.where(group: "B")
    @advicemenu_c = Advicemenu.where(group: "C")
    @advicemenu_d = Advicemenu.where(group: "D")
    @advicemenu_e = Advicemenu.where(group: "E")
    @advicemenu_f = Advicemenu.where(group: "F")
    @advicemenu_g = Advicemenu.where(group: "G")
    @advicemenu_h = Advicemenu.where(group: "H")
    @advicemenu_i = Advicemenu.where(group: "I")
    @advicemenu_j = Advicemenu.where(group: "J")
    @advicemenu_k = Advicemenu.where(group: "K")
    @advicemenu_l = Advicemenu.where(group: "L")
    @advicemenu_m = Advicemenu.where(group: "M")
    @advicemenu_n = Advicemenu.where(group: "N")
    @advicemenu_o = Advicemenu.where(group: "O")
  end
  
  def new
    @advicediary = current_user.advicediaries.new
    params[:group]
    @advicemenus = Advicemenu.where(group: params[:group])
  end
  
  def create
    @advicediary = current_user.advicediaries.create(weight: advicediary_params[:weight], reps: advicediary_params[:reps], advicemenu_id: advicediary_params[:advicemenu_id], user_id: current_user.id, useradvice_id: current_user.useradvice.id, idealweight_id: current_user.idealweight.id)
    redirect_to action: 'index'
  end
  
  def content
  end
  
  def destroy
    current_user.advicediaries.find(params[:id]).destroy
    @advicediaries = current_user.advicediaries.all
    redirect_to action: 'index'
  end
  
  def edit
    @advicediary = current_user.advicediaries.find(params[:id])
  end
  
  def update
    @advicediary = current_user.advicediaries.find(params[:id])
    @advicediary.update(advicediary_params)
    redirect_to action: 'index'
  end
  
  private
  def advicediary_params
    params.require(:advicediary).permit(:weight, :reps, :user_id, :menu, :advicemenu_id, :useradvice_id, :idealweight_id)
  end
  
end
