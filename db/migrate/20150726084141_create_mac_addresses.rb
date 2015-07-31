class CreateMacAddresses < ActiveRecord::Migration
  def change
    create_table :mac_addresses, id: false do |t|
      t.string :id, null: false
      t.string :user_group_id, null: false
      t.integer :vlan_id
      t.string :information

      t.timestamps null: false
      # t.index :id
    end
    execute "ALTER TABLE mac_addresses ADD PRIMARY KEY (id);"
  end
end
