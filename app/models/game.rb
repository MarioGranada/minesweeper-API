class Game
  include Mongoid::Document
  include Mongoid::Timestamps

  before_create :init_game

  GAME_STATUS = {:isOver => 'OVER', :inGame => 'IN_GAME'}
  CELL_STATUS = {:red_flag => 'RED_FLAG', :question_mark => 'QUESTION_MARK', :exploded => 'EXPLODED', :covered => 'COVERED'}
  
  field :rows, type: Integer
  field :cols, type: Integer
  field :time, type: Integer
  field :mines_positions, type: Array
  field :mines_total, type: Integer
  field :cells, type: Array
  field :grid_status


  def isOver
  	self.grid_status == GAME_STATUS::isOver
  end

  def total_of_cells
  	self.rows * self.cols
  end

  private
  	def generate_mines_positions
  		self.mines_positions = (0..(self.total_of_cells)).to_a.shuffle.take(self.mines_total)
  	end

  	def init_game
  		self.grid_status = GAME_STATUS::inGame
  		self.cells = []

  		(0..(self.total_of_cells)).each do |i| 
  			self.cells.push({:cell_status => CELL_STATUS::covered})
  		end

  		self.generate_mines_positions
  	end
end
