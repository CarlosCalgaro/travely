class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :string, null: false, default: 'HumanUser'
    add_column :users, :cpf_cnpj, :string
    add_column :users, :name, :string
    add_column :users, :company_name, :string
    add_column :users, :fantasy, :string
    add_column :users, :gender, :string
    add_column :users, :birthdate, :date
  end
end
