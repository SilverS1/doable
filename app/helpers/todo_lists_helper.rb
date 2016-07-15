module TodoListsHelper

	def list_background(list)
		if list.color == "Blue"
			"blue_background"
		elsif list.color == "Red"
			"red_background"
		elsif list.color == "Green"
			"green_background"
		elsif list.color == "Yellow"
			"yellow_background"
		else
			"list"
		end
	end

end
