class CreateTodoListModel < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :list_type
      t.string :title
      t.references :user, index: true, foreign_key: true
    end
  end
end
