class Topic < ActiveRecord::Base
  belongs_to :subforum
  has_many :posts
end
