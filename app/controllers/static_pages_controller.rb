class StaticPagesController < ApplicationController

	def home
		@todo_item = TodoItem.new
		@user = current_user
		
	end

	def new_list 
		@user = current_user
		@todo_list = @user.todo_lists.new
		if @todo_list.save
			redirect_to root_url
		else
			render 'new'
		end
	end


end
