class GameSerializer < ActiveModel::Serializer
  attributes : :id, :games
has_many :users


  

end