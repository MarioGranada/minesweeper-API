class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token  
	before_action :get_user, except: [:create, :index, :find_user_by_email] 

	def create
		@user = User.create!(user_params)
		json_response(@user, :created)
	end

	def show
		json_response(@user)
	end

	def find_user_by_email
		@user = User.where(email: user_params[:email]).first
		json_response(@user)
	end

	def update
		@user.update(user_params)
		head :no_content
	end

	def read_games
		json_response(@user.games)
	end

	def add_game
		@game = Game.new(game_params)
		@game.user_id = @user.id
		@game.save!
		@user.games << @game
		json_response(@game)
	end

	def index
		@users = User.all
		json_response(@users)
	end

	private
		def get_user
			@user = User.find(params[:id])
		end

		def user_params
			params.permit(:name, :email, :password)
		end

		def game_params
			params.permit(:rows, :cols, :mines_total)
		end
end
