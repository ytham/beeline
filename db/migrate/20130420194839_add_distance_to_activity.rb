class AddDistanceToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :distance, :decimal, precision: 8, scale: 2
  end
end
