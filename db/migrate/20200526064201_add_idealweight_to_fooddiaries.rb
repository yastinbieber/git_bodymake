class AddIdealweightToFooddiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :fooddiaries, :idealweight_id, :integer
  end
end
