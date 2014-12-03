class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :img
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.integer :category_id
      t.integer :company_id

      t.timestamps
    end
  end
end
