class WeightchangesController < ApplicationController
  
  def index
    @weightchanges = current_user.weightchanges.all.order("date DESC")
    @weightchange_today = current_user.weightchanges.find_by(date: Date.current.all_day)
    weightchanges = current_user.weightchanges.pluck(:date, :todayweight)
    @labels = weightchanges.map(&:first)
    @datas = weightchanges.map(&:second)
    @max = current_user.weightchanges.maximum(:todayweight)
    @minimum = current_user.weightchanges.minimum(:todayweight)
    @sum_column = current_user.weightchanges.size
  end
  
  def new
    @weightchange = Weightchange.new
  end
  
  def create
    @weightchange = Weightchange.create(date: weightchange_params[:date], todayweight: weightchange_params[:todayweight], user_id: current_user.id, idealweight_id: current_user.idealweight.id)
    redirect_to action: :index
  end
  
  def destroy
    current_user.weightchanges.find(params[:id]).destroy
    @weightchanges = current_user.weightchanges.all
    redirect_to action: 'index'
  end
  
  def edit
    @weightchange = current_user.weightchanges.find(params[:id])
  end
  
  def update
    @weightchange = current_user.weightchanges.find(params[:id])
    @weightchange.update(weightchange_params)
    redirect_to action: 'index'
  end
  
  private
  def weightchange_params
    params.require(:weightchange).permit(:date, :todayweight, :user_id, :idealweight_id)
  end
end
