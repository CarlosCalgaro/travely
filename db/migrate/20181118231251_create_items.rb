class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.datetime :date

      t.timestamps
    end
  end
end
