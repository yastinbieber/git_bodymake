class AddGroupToAdvicemenus < ActiveRecord::Migration[5.2]
  def change
    add_column :advicemenus, :group, :string
  end
end
