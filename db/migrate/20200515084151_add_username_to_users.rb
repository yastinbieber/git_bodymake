class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :area, :string
    add_column :users, :birthday, :date
    add_column :users, :text, :text
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :sex, :string
  end
end
