class AddColorToTodoLists < ActiveRecord::Migration
  def change
    add_column :todo_lists, :color, :string
  end
end
