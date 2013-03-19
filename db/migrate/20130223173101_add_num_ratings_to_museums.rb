class AddNumRatingsToMuseums < ActiveRecord::Migration
  def change
    add_column :museums, :num_ratings, :integer
  end
end
