class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type
      t.string :image
      t.string :name
      t.string :location
      t.string :time
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
