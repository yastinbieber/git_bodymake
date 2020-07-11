class Workoutmenu < ApplicationRecord
  
  validates :settype, :weight, :reps, presence: true
  
  def self.search(search) 
    if search
      Workoutmenu.where(['created_at LIKE ?', "%#{search}%"])
    else
      Workoutmenu.where(created_at: Date.current.all_day)
    end
  end
  
  belongs_to :user
  validates :user_id, presence: true
  
  belongs_to :workoutdate
  
end
