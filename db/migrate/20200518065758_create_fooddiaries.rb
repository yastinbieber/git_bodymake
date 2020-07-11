class CreateFooddiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :fooddiaries do |t|
      t.integer :foodname_id
      t.integer :gram
      t.integer :kcal
      t.integer :protein
      t.integer :fat
      t.integer :carbo
      t.string :timing
      

      t.timestamps null: true
    end
  end
end
