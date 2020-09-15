class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :events, foreign_key: :creator_id
end
