class User < ApplicationRecord
  has_many :blog_posts

  validates :name, length: { maximum: 45 }, presence: true, uniqueness: true
  validates :email, length: { maximum: 45 }, presence: true, uniqueness: true
end
