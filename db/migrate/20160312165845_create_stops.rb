class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :id
      t.string :title
      t.integer :mediatype
      t.string :media
      t.integer :item
      t.string :itemdate
      t.string :itemartist
      t.string :itemimagefile
      t.tour :tour
      t.integer :stopnumber

      t.timestamps null: false
    end
  end
end
