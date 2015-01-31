class CreateHandicrafts < ActiveRecord::Migration
  def change
    create_table :handicrafts do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image
      t.string :owner_name

      t.timestamps null: false
    end
  end
end
