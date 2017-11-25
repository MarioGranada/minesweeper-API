class GamesController < ApplicationController
	before_action :get_game, only: [:show, :update] 

	def show
		json_response(@game)
	end

	def update
		@game.update(params[:game])
		head :no_content
	end

	private
		def get_game
			@game = Game.find(params[:id])
		end

end
