class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :category_id, presence: true

  def post_date
    self.created_at.strftime("%B %d, %Y")
  end

end