class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :phone
      t.string :school_name
      t.string :school_phone
      t.string :school_address
      t.string :province
      t.string :city
      t.string :school_domain_name
      t.string :requirement_file_path
      t.integer :status


      t.timestamps null: false
    end
  end
end
