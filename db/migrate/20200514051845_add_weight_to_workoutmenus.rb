class AddWeightToWorkoutmenus < ActiveRecord::Migration[5.2]
  def change
    add_column :workoutmenus, :weight, :integer
    add_column :workoutmenus, :reps, :integer
    add_column :workoutmenus, :settype, :string
    add_column :workoutmenus, :date, :date
  end
end
