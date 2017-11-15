class Game
  include Mongoid::Document
  field :rows, type: Integer
  field :cols, type: Integer
  field :isOver, type: Boolean
  field :mines, type: Array
end
