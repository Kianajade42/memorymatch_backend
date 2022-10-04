class User < ApplicationRecord
      has_many :games

     scope :most_recent, -> {order(created_at: :asc).limit(5)}
end
 