class Useradvice < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  
  has_many :advicediaries
end
