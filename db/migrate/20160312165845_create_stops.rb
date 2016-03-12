class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :title, null: false
      t.integer :media_type, null: false
      t.string :media, null: false
      t.string :item_id, null: false
      t.belongs_to :tour, null: false
      t.integer :stop_number, null: false

      t.timestamps null: false
    end
  end
end
