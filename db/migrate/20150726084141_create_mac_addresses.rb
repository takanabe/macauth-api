class CreateMacAddresses < ActiveRecord::Migration
  def change
    create_table :mac_addresses, id: false do |t|
      t.string :id, null: false
      t.string :ug_id, null: false
      t.string :vlan_id
      t.string :information

      t.timestamps null: false
      # t.index :id
    end
    execute "ALTER TABLE mac_addresses ADD PRIMARY KEY (id);"
  end
end
