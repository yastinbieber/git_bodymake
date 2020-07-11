class Fooddiary < ApplicationRecord
  
  # validates :gram, :kcal, :protein, :fat, :carbo, :timing, :fooddate_id, presence: true

  belongs_to :fooddate
  
  belongs_to :user
  validates :user_id, presence: true
  
  belongs_to :idealweight
  
  def self.search(search) 
    if search
      Fooddiary.where(['created_at LIKE ?', "%#{search}%"]) 
    else
      Fooddiary.where(created_at: Date.current.all_day)
    end
  end

  before_save do
    self.kcal = (gram)*(fooddate.kcal)
    self.protein = (gram)*(fooddate.protein)
    self.fat = (gram)*(fooddate.fat)
    self.carbo = (gram)*(fooddate.carbo)
  end
  
  
end
