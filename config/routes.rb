Rails.application.routes.draw do
  devise_for :users

  root "static_pages#home"

  resources :todo_lists do 
  	resources :todo_items do 
  		member do
  			put :check_item
  		end
  	end
  end

end
