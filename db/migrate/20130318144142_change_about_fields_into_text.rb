class ChangeAboutFieldsIntoText < ActiveRecord::Migration
  def up
  	change_column :museums, :about_de, :text
  	change_column :museums, :about_en, :text
  	change_column :museums, :about_hr, :text
  end

  def down
  	change_column :museums, :about_de, :string
  	change_column :museums, :about_en, :string
  	change_column :museums, :about_hr, :string
  end
end
