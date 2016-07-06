class StaticPagesController < ApplicationController

	def home
		@todo_item = TodoItem.new
	end


end
