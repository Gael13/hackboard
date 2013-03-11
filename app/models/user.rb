class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :comments
  has_many :posts
end
