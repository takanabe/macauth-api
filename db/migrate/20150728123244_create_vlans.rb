class CreateVlans < ActiveRecord::Migration
  def change
    create_table :vlans, id: false do |t|
      t.integer :id, null: false

      t.timestamps null: false
    end
    execute "ALTER TABLE vlans ADD PRIMARY KEY (id);"
  end
end
