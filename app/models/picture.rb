class Picture < ActiveRecord::Base
  attr_accessible :name, :order
  belongs_to :museum
end
