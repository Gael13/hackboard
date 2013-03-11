class Post < ActiveRecord::Base
  attr_accessible :description, :link, :post_id

  validates :description, presence: true
  validates :link, presence: true
  validates :user, presence: true

  has_many :comments
  belongs_to :user

end
