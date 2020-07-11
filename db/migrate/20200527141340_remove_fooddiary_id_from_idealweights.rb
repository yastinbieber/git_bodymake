class RemoveFooddiaryIdFromIdealweights < ActiveRecord::Migration[5.2]
  def change
    remove_column :idealweights, :fooddiary_id, :integer
  end
end
