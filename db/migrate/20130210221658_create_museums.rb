class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :about_de
      t.string :about_en
      t.string :about_hr
      t.string :access
      t.string :additional_de
      t.string :additional_en
      t.string :additional_hr
      t.string :audio
      t.decimal :avg_rating
      t.string :cafe
      t.string :city
      t.string :comment_de
      t.string :comment_en
      t.string :comment_hr
      t.string :event_de
      t.string :event_en
      t.string :event_hr
      t.boolean :favourite
      t.string :guide_de
      t.string :guide_en
      t.string :guide_hr
      t.string :hours_de
      t.string :hours_en
      t.string :hours_hr
      t.decimal :latitude
      t.decimal :longitude
      t.string :mail
      t.string :name_de
      t.string :name_en
      t.string :name_hr
      t.string :no
      t.string :post
      t.string :price_de
      t.string :price_en
      t.string :price_hr
      t.string :server_id
      t.string :shop
      t.string :street
      t.string :tel
      t.string :timestmp
      t.string :web

      t.timestamps
    end
  end
end
