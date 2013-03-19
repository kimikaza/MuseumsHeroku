class AddMuseumIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :museum_id, :integer
  end
end
