class ChangeNameFromCartProducts < ActiveRecord::Migration[5.1]
  def change

    rename_table :cart_products, :cart_items
    rename_column :cart_items, :product_id, :item_id
  end
end
