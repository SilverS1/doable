class TodoItem < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :todo_list
  belongs_to :user
  self.table_name = "todo_items"
end