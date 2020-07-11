class AddWorkoutdateIdToWorkoutmenus < ActiveRecord::Migration[5.2]
  def change
    add_column :workoutmenus, :workoutdate_id, :integer
  end
end
