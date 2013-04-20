class AddCartIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :cart_id, :integer
  end
end
