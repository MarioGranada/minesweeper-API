class Game
  include Mongoid::Document
  include Mongoid::Timestamps

  before_create :init_game
  before_update :update_grid_when_over
  belongs_to :user, inverse_of: :user

  GAME_STATUS = {:is_over => 'OVER', :in_game => 'IN_GAME'}
  CELL_STATUS = {:red_flag => 'RED_FLAG', :question_mark => 'QUESTION_MARK', :exploded => 'EXPLODED', :covered => 'COVERED', :uncovered => 'UNCOVERED'}
  
  field :rows, type: Integer
  field :cols, type: Integer
  field :time, type: Integer
  field :mines_positions, type: Array
  field :mines_total, type: Integer
  field :cells, type: Array
  field :grid_status


  def is_over
  	self.grid_status == Game::GAME_STATUS[:is_over]
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
  		self.grid_status = Game::GAME_STATUS[:in_game]
  		self.cells = []
  		self.time = 0

  		(0..(self.total_of_cells)).each do |i| 
  			self.cells.push({:cell_status => Game::CELL_STATUS[:covered]})
  		end

  		generate_mines_positions
  	end

  	def update_grid_when_over
  		if self.is_over
  			self.cells.each_with_index do |cell,index|
  				cell = mines_positions.include?(index) ? Game::CELL_STATUS[:exploded] : Game::CELL_STATUS[:uncovered]
  			end
  		end
  	end
end
