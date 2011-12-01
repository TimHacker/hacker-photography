class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :sort_order
      t.datetime :date
      t.string :url
      t.string :alternate_description
      t.integer :height
      t.integer :width
      t.integer :album_id

      t.timestamps
    end
  end
end
