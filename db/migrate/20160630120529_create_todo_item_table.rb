class CreateTodoItemTable < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.integer :importance
      t.datetime :due_date
      t.timestamps null: false
    end
  end
end
