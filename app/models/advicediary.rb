class Advicediary < ApplicationRecord
  
  def self.search(search) 
    if search
      Advicediary.where(['created_at LIKE ?', "%#{search}%"])
    else
      Advicediary.where(created_at: Date.current.all_day)
    end
  end
  
  belongs_to :user
  validates :user_id, presence: true
  
  belongs_to :advicemenu
  belongs_to :useradvice
  validates :useradvice_id, presence: true
  
  belongs_to :idealweight
  
end
