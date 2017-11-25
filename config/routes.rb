Rails.application.routes.draw do

	resources :users, only: [:create, :show, :update]
	
	resources :games, only: [:show, :update]

	get 'users/:id/games', to: "users#read_games"

	post 'users/:id/games', to: "users#add_game"

end
