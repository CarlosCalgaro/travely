class CreateStablishments < ActiveRecord::Migration[5.1]
  def change
    create_table :stablishments do |t|
      t.string :address
      t.string :name
      t.references :user, foreign_key: true
      t.string :country
      t.string :phone
      t.string :phone2
      t.string :cnpj
      t.string :fantasy

      t.timestamps
    end
  end
end
