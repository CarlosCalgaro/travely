class AddStablishmentToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :stablishment, foreign_key: true
  end
end
