class AddStatusIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :status_id, :integer
  end
end
