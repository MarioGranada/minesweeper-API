class Game
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :rows, type: Integer
  field :cols, type: Integer
  field :isOver, type: Boolean
  field :time, type: Integer
  field :mines, type: Array
end
