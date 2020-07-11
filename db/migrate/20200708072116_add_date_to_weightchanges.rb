class AddDateToWeightchanges < ActiveRecord::Migration[5.2]
  def change
    add_column :weightchanges, :date, :date
  end
end
