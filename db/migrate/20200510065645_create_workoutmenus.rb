class CreateWorkoutmenus < ActiveRecord::Migration[5.2]
  def change
    create_table :workoutmenus do |t|
      t.string :menu
      t.timestamps null: true
    end
  end
end
