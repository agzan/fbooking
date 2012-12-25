class Post < ActiveRecord::Base
  attr_accessible :description, :title, :tag_list

  acts_as_taggable

  acts_as_commentable
end
