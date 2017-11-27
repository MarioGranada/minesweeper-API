Rails.application.routes.draw do

	resources :users, only: [:index, :create, :show, :update]
	
	resources :games, only: [:show, :update]

	get 'users/:id/games', to: "users#read_games"

	post 'users/:id/games', to: "users#add_game"

	post 'games/:id/update_single_cell', to: 'games#update_single_cell'

	post 'games/:id/update_cells_group', to: 'games#update_cells_group'

end
