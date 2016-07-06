class TodoList < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :user
  has_many :todo_items
  self.table_name = "todo_lists"
end