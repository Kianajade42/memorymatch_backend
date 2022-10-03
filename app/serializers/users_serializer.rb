class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :score, :time
belongs_to :game


  

end