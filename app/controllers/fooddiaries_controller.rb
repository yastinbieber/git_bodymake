class FooddiariesController < ApplicationController
  # protect_from_forgery with: :exception
  autocomplete :fooddate, :foodname, :full => true # 追加
  
  def index
    @fooddiary_morning = current_user.fooddiaries.search(params[:search]).where(timing: '朝食')
    @fooddiary_lunch = current_user.fooddiaries.search(params[:search]).where(timing: '昼食')
    @fooddiary_dinner = current_user.fooddiaries.search(params[:search]).where(timing: '夕食')
    @fooddiary_snack = current_user.fooddiaries.search(params[:search]).where(timing: '間食')
    @fooddiaries = current_user.fooddiaries.search(params[:search])
    @fooddiary_sum_kcal = @fooddiaries.sum { |fooddiary| fooddiary[:kcal] }
    @fooddiary_sum_protein = @fooddiaries.sum { |fooddiary| fooddiary[:protein] }
    @fooddiary_sum_fat = @fooddiaries.sum { |fooddiary| fooddiary[:fat] }
    @fooddiary_sum_carbo = @fooddiaries.sum { |fooddiary| fooddiary[:carbo] }
  end
  
  def new
    @fooddiary = current_user.fooddiaries.new
    if params[:fooddate] && params[:fooddate][:foodname]
    fooddate_foodname = params[:fooddate][:foodname]
    @fooddates = Fooddate.where(foodname: fooddate_foodname)
    else
    @fooddates = Fooddate.all
    end
  end
  
  def create
    @fooddiary = Fooddiary.create(gram: fooddiary_params[:gram], kcal: fooddiary_params[:kcal], protein: fooddiary_params[:protein], fat: fooddiary_params[:fat], 
                  carbo: fooddiary_params[:carbo], timing: fooddiary_params[:timing], fooddate_id: fooddiary_params[:fooddate_id], user_id: current_user.id, idealweight_id: current_user.idealweight.id )
    redirect_to action: 'index'
  end
  
  def destroy
    current_user.fooddiaries.find(params[:id]).destroy
    @fooddiaries = current_user.fooddiaries.all
    redirect_to action: 'index'
  end
  
  def edit
    @fooddiary = current_user.fooddiaries.find(params[:id])
  end
  
  def update
    @fooddiary = current_user.fooddiaries.find(params[:id])
    @fooddiary.update(fooddiary_params)
    redirect_to action: 'index'
  end
  
  private
  def fooddiary_params
    params.require(:fooddiary).permit(:gram, :kcal, :protein, :fat, :carbo, :timing, :fooddate_id, :user_id, :idealweight_id)
  end

end
