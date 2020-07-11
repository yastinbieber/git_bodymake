class AddUserIdToWorkoutmenus < ActiveRecord::Migration[5.2]
  def change
    add_column :workoutmenus, :user_id, :integer
  end
end
