class AddIndexToMacAddressesId < ActiveRecord::Migration
  def change
    add_index :mac_addresses, :id, unique: true
  end
end
