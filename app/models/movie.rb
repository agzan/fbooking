class Movie < ActiveRecord::Base
  attr_accessible :description, :title, :tag_list

  acts_as_taggable

end
