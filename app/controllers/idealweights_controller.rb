class IdealweightsController < ApplicationController
  
  def new
    @idealweight = Idealweight.new
  end
  
  def create
    @idealweight = Idealweight.create(height: idealweight_params[:height], weight: idealweight_params[:weight], targetweight: idealweight_params[:targetweight], exerciselevel: idealweight_params[:exerciselevel], period: idealweight_params[:period], basemetabolism: idealweight_params[:basemetabolism], kcalburned: idealweight_params[:kcalburned], 
    minusweight: idealweight_params[:minusweight], minuskcal: idealweight_params[:minuskcal], kcalintake: idealweight_params[:kcalintake], intakeproteingram: idealweight_params[:intakeproteingram], intakeproteinkcal: idealweight_params[:intakeproteinkcal], intakefatgram: idealweight_params[:intakefatgram], intakefatkcal: idealweight_params[:intakefatkcal], 
    intakecarbogram: idealweight_params[:intakecarbogram], intakecarbokcal: idealweight_params[:intakecarbokcal], user_id: current_user.id)
    redirect_to controller: :advicediaries, action: :content
  end
  
  private
  def idealweight_params
    params.require(:idealweight).permit(:height, :weight, :targetweight, :exerciselevel, :period, :basemetabolism, :kcalburned, :minusweight, :minuskcal, :kcalintake, :intakeproteingram, :intakeproteinkcal, :intakefatgram, :intakefatkcal, :intakecarbogram, :intakecarbokcal, :user_id)
  end
end
