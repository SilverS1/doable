class TodoListsController < ApplicationController
	before_action :set_user

	def new
		@user = current_user
		@todo_list = @user.todo_lists.new
		@todo_list.todo_items.new(params[:todo_item])
		@todo_list.user_id = current_user.id
	end

	def create
		@user = current_user
		@todo_list = @user.todo_lists.new(todo_list_params)
		@todo_list.user_id = current_user.id
		if @todo_list.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	def show
		@todo_list = TodoList.find(params[:id])
		@todo_item = TodoItem.new
	end

	def edit
		@user = current_user
		@todo_list = TodoList.find(params[:id])
	end

	def update
		@user = current_user
		@todo_list = TodoList.find(params[:id])
		if @todo_list.update_attributes(todo_list_params)
			redirect_to root_url
		else
			render 'edit'
		end
	end

	def destroy
		@todo_list = TodoList.find(params[:id])
		@todo_list.destroy
		redirect_to root_url
	end

	private

	def todo_list_params
		params.require(:todo_list).permit(:list_type, :title, :remove_self, 
			todo_items_attributes: [:content, :importance, :due_date, :checked])
	end

	# def todo_item_params
	# 	params.require(:todo_item).permit(:content, :importance, :due_date, :checked)
	# end

	def set_user
		@user = current_user
	end


end
