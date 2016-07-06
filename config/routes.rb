Rails.application.routes.draw do
  devise_for :users

  root "static_pages#home"

  resources :todo_lists do 
  	resources :todo_items
  end

end
