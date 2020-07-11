class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_one_attached :image
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :workoutmenus
  has_many :workoutdates
  has_many :fooddiaries
  has_one :useradvice
  has_many :advicediaries
  
  has_one :idealweight
  # accepts_nested_attributes_for :idealweight
  
  has_many :weightchanges
  
  def self.search(search) #index画面
    if search
      where(['created_at LIKE ?', "%#{search}%"]) 
    end
  end
  
  def set_date
    birthday.try(:strftime, "%Y%m%d").to_i
  end
  
  def today_date
    @today = Date.today
    @today.strftime("%Y%m%d").to_i
  end
  
  before_save do
    self.age = (today_date-set_date)/10000
  end
  
end
