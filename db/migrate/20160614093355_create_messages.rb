class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :order, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
