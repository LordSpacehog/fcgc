class SubForum < ActiveRecord::Base
  belongs_to :category
  has_many :topics
  
end
