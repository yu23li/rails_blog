class BlogPost < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 50 }, presence: true, uniqueness: true
  validates :summary, length: { maximum: 150 }, presence: true
  validates :content, presence: true
  validates :title_image_url, presence: false
end
