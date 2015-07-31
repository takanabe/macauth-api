class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups, id: false do |t|
      t.string :id, null: false
      t.timestamps null: false
    end
    execute "ALTER TABLE user_groups ADD PRIMARY KEY (id);"
  end
end
