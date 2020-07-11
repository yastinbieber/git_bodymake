class AddUserIdToFooddiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :fooddiaries, :user_id, :integer
  end
end
