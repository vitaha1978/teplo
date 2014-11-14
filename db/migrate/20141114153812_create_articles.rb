class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :url
      t.integer :category_id
      t.integer :company_id

      t.timestamps
    end
  end
end
