class AddRemainingKcalToFooddiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :fooddiaries, :remaining_kcal, :integer
    add_column :fooddiaries, :remaining_proteingram, :integer
    add_column :fooddiaries, :remaining_fatgram, :integer
    add_column :fooddiaries, :remaining_carbogram, :integer
  end
end
