class AddIndexesToCarts < ActiveRecord::Migration
  def change
    add_index :carts, :user_id
    add_index :carts, :activity_id
    add_index :carts, [:user_id, :activity_id], unique: true
  end
end
