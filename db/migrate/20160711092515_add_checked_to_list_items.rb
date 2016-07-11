class AddCheckedToListItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :checked, :boolean, default: false
  end
end
