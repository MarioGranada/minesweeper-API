Rails.application.routes.draw do

	resources :users
	
	resources :games, only: [:create, :show]

	get 'users/:id/games', to: "users#read_games"

	post 'users/:id/games', to: "users#add_game"

	put 'games/:id/', to: 'games#update_grid_status'

end
