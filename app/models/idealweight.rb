class Idealweight < ApplicationRecord
  
  belongs_to :user
  has_many :fooddiaries
  has_many :advicediaries
  has_many :weightchanges
  
  before_save do
    if user.sex == "男"
      self.basemetabolism = 13.397*(weight)+4.799*(height)-5.677*(user.age)+88.362 #男性の場合
    else
      self.basemetabolism = 9.247*(weight)+3.098*(height)-4.33*(user.age)+447.593 #女性の場合
    end
    self.kcalburned = (basemetabolism)*(exerciselevel)
    self.minusweight = (weight)-(targetweight)
    self.minuskcal = (minusweight)*7000
    self.kcalintake = (kcalburned)-(minuskcal)/(period)
    self.intakeproteingram = (weight)*2
    self.intakeproteinkcal = (weight)*2*4
    self.intakefatgram = (weight)*0.7
    self.intakefatkcal = (weight)*0.7*9
    self.intakecarbokcal = (kcalintake)-(intakeproteinkcal)-(intakefatkcal)
    self.intakecarbogram = (intakecarbokcal)/4
  end
  
end
