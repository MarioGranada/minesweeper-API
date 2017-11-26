class Game
  include Mongoid::Document
  include Mongoid::Timestamps

  before_create :init_game
  before_update :update_grid_when_over

  GAME_STATUS = {:isOver => 'OVER', :inGame => 'IN_GAME'}
  CELL_STATUS = {:red_flag => 'RED_FLAG', :question_mark => 'QUESTION_MARK', :exploded => 'EXPLODED', :covered => 'COVERED', :uncovered => 'UNCOVERED'}
  
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

  def isMineFound(cell_position)
  	self.mines_positions.include?(cell_position)
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

  	def update_grid_when_over
  		if self.isOver
  			self.cells.each_with_index do |cell,index|
  				cell = mines_positions.include?(index) ? CELL_STATUS::exploded : CELL_STATUS::uncovered
  			end
  		end
  	end
end
