class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :todo_lists
  has_many :todo_items
  after_commit :set_default_role, on: :create 

  private

  def set_default_role
  	self.role ||= "User"
  end


end
