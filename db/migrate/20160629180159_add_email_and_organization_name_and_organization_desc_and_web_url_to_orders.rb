class AddEmailAndOrganizationNameAndOrganizationDescAndWebUrlToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :email, :string
    add_column :orders, :organization_name, :string
    add_column :orders, :organization_desc, :string
    add_column :orders, :web_url, :string
  end
end
