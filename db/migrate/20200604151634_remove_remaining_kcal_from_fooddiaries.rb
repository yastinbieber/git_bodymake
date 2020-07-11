class RemoveRemainingKcalFromFooddiaries < ActiveRecord::Migration[5.2]
  def change
    remove_column :fooddiaries, :remaining_kcal, :integer
    remove_column :fooddiaries, :remaining_proteingram, :integer
    remove_column :fooddiaries, :remaining_fatgram, :integer
    remove_column :fooddiaries, :remaining_carbogram, :integer
  end
end
