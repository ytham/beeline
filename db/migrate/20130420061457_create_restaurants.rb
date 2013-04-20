class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
