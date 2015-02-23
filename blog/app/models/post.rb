class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
end