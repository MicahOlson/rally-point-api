class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :notification
      t.integer :organization_id
      
      t.timestamps
    end
  end
end
