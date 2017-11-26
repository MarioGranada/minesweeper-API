class GamesController < ApplicationController
	before_action :get_game

	def show
		json_response(@game)
	end

	def update
		@game.update(params[:game])
		head :no_content
	end

	def update_single_cell
		position_in_array = params[:array_cell_position]
		@game.cells[position_in_array] = params[:cell_state]
		@game.grid_status = GAME_STATUS::isOver if @game.isMineFound(position_in_array)
		@game.save!
		json_response(@game)
	end

	def update_cells_group
		
		json_response(@game)
	end

	private
		def get_game
			@game = Game.find(params[:id])
		end

end
