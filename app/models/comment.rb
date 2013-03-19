class Comment < ActiveRecord::Base
  attr_accessible :commenter, :commtext, :museum_id
  belongs_to :museum
end
