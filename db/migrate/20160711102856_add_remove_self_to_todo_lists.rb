class AddRemoveSelfToTodoLists < ActiveRecord::Migration
  def change
    add_column :todo_lists, :remove_self, :boolean, default: false
  end
end
