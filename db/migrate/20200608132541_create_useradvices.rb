class CreateUseradvices < ActiveRecord::Migration[5.2]
  def change
    create_table :useradvices do |t|
      t.integer :user_id
      t.integer :idealweight_id
      t.string :purpose
      t.integer :frequency
      t.timestamps
    end
  end
end
