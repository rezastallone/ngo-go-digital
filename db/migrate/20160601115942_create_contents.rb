class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references :order, index: true, foreign_key: true
      t.string :file_path
      t.text :note

      t.timestamps null: false
    end
  end
end
