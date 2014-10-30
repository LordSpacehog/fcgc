class Category < ActiveRecord::Base
  has_many :sub_forums

  def self.get_all_subforums()
    forumlist = Hash.new()
    
    categories = Category.all()

    categories.each do |category|
      forums = SubForum.where(category: category.id)
      
      forumlist[category.name] = forums

    end

    forumlist
  end

end
