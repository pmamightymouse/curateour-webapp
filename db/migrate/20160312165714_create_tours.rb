class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :id
      t.string :name
      t.user :creator

      t.timestamps null: false
    end
  end
end
