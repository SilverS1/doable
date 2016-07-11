class TodoItemsController < ApplicationController

	before_action :set_todo_list

	def new
		@todo_item = @todo_list.todo_items.new
	end

	def create
		@todo_item = @todo_list.todo_items.new(todo_item_params)
		@todo_item.user_id = current_user.id
		if @todo_item.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	def destroy
		@todo_item = TodoItem.find(params[:id])
		@todo_item.destroy
		redirect_to root_url
	end

	def edit
		@todo_item = TodoItem.find(params[:id])
	end

	def update
		@todo_item = TodoItem.find(params[:id])
		if @todo_item.update_attributes(todo_item_params)
			redirect_to :back
		else
			render 'edit'
		end
	end

	def check_item
	  	@todo_item = TodoItem.find(params[:id])
	  	@todo_item.update_attributes(checked: true)
	  	redirect_to root_url
	end

	private

	def set_todo_list
		@todo_list = TodoList.find(params[:todo_list_id])
	end

	def todo_item_params
		params.require(:todo_item).permit(:content, :importance, :due_date, :checked)
	end


end
