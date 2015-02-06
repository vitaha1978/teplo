class RemovePhoneFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :phone
  end
end
