class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.float :price, null: false
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
