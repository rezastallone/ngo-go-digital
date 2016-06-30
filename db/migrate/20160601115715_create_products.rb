class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :order, index: true, foreign_key: true
      t.integer :status
      t.string :domain
      t.string :cpanel_username
      t.string :cpanel_password
      t.string :wordpress_username
      t.string :wordpress_password
      t.string :g4np_email
      t.string :g4np_password
      t.text :note

      t.timestamps null: false
    end
  end
end
