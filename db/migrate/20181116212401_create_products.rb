class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price, precision: 5, scale: 2
      t.string :address

      t.timestamps
    end
  end
end
