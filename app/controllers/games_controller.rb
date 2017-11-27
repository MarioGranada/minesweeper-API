class GamesController < ApplicationController
	skip_before_action :verify_authenticity_token  
	before_action :get_game

	def show
		json_response(@game)
	end

	def update
		@game.update(params[:game])
		head :no_content
	end

	def update_single_cell
		position_in_array = params[:array_cell_position].to_i
		@game.cells[position_in_array][:cell_status] = params[:cell_status]
		@game.grid_status = Game::GAME_STATUS[:is_over] if @game.is_not_red_flag_and_mine_found(position_in_array)
		@game.time = params[:time].to_i
		@game.save!
		json_response(@game)
	end

	def update_cells_group
		positions_array = (params[:positions_array].split(',')).map(&:to_i)
		@game.time = params[:time]

		positions_array.each do |position|
			@game.cells[position][:cell_status] = Game::CELL_STATUS[:uncovered] if !@game.is_red_flag_or_mine_found(position)
		end

		@game.save!

		json_response(@game)
	end

	private
		def get_game
			@game = Game.find(params[:id])
		end

end
