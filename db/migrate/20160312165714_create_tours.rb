class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name, null: false
      t.belongs_to :user, null: false
      t.string :state, default: 'draft', null: false

      t.timestamps null: false
    end
  end
end
