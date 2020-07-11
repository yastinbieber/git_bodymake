class CreateIdealweights < ActiveRecord::Migration[5.2]
  def change
    create_table :idealweights do |t|
      t.integer :user_id
      t.integer :fooddiary_id
      t.integer :height
      t.integer :weight
      t.integer :targetweight
      t.float :exerciselevel
      t.timestamps null: true
    end
  end
end
