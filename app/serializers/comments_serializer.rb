class CommentSerializer < ActiveModel::Serializer
  attributes :username, :comment
belongs_to :user


  

end