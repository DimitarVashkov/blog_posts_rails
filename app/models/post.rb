class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {in: 5..50}
  validates :body, presence: true, length: {minimum: 10}
  validates :user_id, presence: true
end
