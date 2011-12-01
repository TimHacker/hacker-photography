class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :sort_order
      t.datetime :created_date

      t.timestamps
    end
  end
end
