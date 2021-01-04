class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.datetime :birthday
      t.string :contact_info
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
