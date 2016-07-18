class TodoList < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :user
  has_many :todo_items, dependent: :destroy
  self.table_name = "todo_lists"
  accepts_nested_attributes_for :todo_items, reject_if: :all_blank

  COLORS = ["Red", "Blue", "Green", "Yellow"]


end