class AddAgeToIdealweights < ActiveRecord::Migration[5.2]
  def change
    add_column :idealweights, :age, :integer
  end
end
