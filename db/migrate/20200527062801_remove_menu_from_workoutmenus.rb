class RemoveMenuFromWorkoutmenus < ActiveRecord::Migration[5.2]
  def change
    remove_column :workoutmenus, :menu, :string
  end
end
