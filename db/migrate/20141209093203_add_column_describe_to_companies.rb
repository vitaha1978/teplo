class AddColumnDescribeToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :describe, :text
  end
end
