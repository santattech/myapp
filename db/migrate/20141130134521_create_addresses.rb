class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :firstname
      t.string :lastname
      t.text :address1
      t.text :address2
      t.string :country
      t.string :zip
      t.timestamps
    end
  end
end
