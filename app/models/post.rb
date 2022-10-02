class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true
  validates :title, length: { maximum: 100 }
  validates :body, length: { maximum: 2000 }
end
