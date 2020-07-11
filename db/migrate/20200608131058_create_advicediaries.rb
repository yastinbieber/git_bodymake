class CreateAdvicediaries < ActiveRecord::Migration[5.2]
  def change
    create_table :advicediaries do |t|
      t.integer :user_id
      t.integer :idealweight_id
      t.integer :advicemenu_id
      t.integer :weight
      t.integer :reps
      

      t.timestamps
    end
  end
end
