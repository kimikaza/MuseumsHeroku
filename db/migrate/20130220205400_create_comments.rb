class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commtext
      t.string :commenter
      t.integer :museum_id

      t.timestamps
    end
  end
end
