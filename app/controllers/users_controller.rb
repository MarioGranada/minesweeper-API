class UsersController < ApplicationController
	before_action :get_user, only: [:show, :update, :read_games, :add_game, :update_game] 

	def create
		@user = User.create!(params[:user])
		json_response(@user, :created)
	end

	def show
		json_response(@user)
	end

	def update
		@user.update(params[:user])
		head :no_content
	end

	def read_games
		json_response(@user.games)
	end

	def add_game
		@game = Game.create!(params[:game])
		@user.games << @game
		json_response(@game)
	end

	private
		def get_user
			@user = User.find(params[:id])
		end
end
