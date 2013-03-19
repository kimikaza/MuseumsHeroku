class Museum < ActiveRecord::Base
  attr_accessible :about_de, :about_en, :about_hr, :access, :additional_de, :additional_en, :additional_hr, :audio, :avg_rating, :cafe, :city, :comment_de, :comment_en, :comment_hr, :event_de, :event_en, :event_hr, :favourite, :guide_de, :guide_en, :guide_hr, :hours_de, :hours_en, :hours_hr, :latitude, :longitude, :mail, :name_de, :name_en, :name_hr, :no, :post, :price_de, :price_en, :price_hr, :server_id, :shop, :street, :tel, :timestmp, :web, :long_name_hr, :long_name_en, :long_name_de, :num_ratings
  has_many :pictures
  has_many :comments  
end
