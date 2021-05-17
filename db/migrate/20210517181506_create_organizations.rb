class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :location
      t.string :point_of_contact
      t.string :contact_phone
      t.string :contact_email
      t.string :status

      t.timestamps
    end
  end
end
