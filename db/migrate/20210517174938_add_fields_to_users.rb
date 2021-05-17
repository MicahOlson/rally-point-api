class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :first_name, :string)
    add_column(:users, :last_name, :string)
    add_column(:users, :mobile_phone, :string)
    add_column(:users, :secondary_phone, :string)
    add_column(:users, :emergency_contact_name, :string)
    add_column(:users, :emergency_contact_phone, :string)
    add_column(:users, :group, :string)
    add_column(:users, :admin, :boolean, default: false)
    add_column(:users, :checked_in, :boolean, default: false)
    add_column(:users, :organization_id, :integer)    
  end
end
