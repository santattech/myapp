class AddAddressIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address_id, :integer
    add_foreign_key :users, :addresses, column: :address_id, dependent: :nullify
  end
end
