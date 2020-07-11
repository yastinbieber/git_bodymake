class Workoutdate < ApplicationRecord
  has_many :workoutdiaries
  belongs_to :user
end
