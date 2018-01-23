class CreateSupplierProducts < ActiveRecord::Migration
  def change
    create_table :supplier_products do |t|
      t.references :product, index: true
      t.string :product_title
      t.references :supplier, index: true
      t.string :supplier_name
      t.float :price, null: false
      t.string :category

      t.timestamps
    end
    add_foreign_key :supplier_products, :products
    add_foreign_key :supplier_products, :suppliers
  end
end
