class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :title, presence: true, uniqueness: true, length: { maximum: 300, minimum: 4 }
  validates :body, presence: true, length: { maximum: 40_000 }
end
