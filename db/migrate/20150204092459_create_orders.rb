class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :pay_type

      t.timestamps
    end
  end
end
