class AddForeignKeyForUsers < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :users, :organizations
  end
end
