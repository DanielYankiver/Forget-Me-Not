class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :year
      t.string :month
      t.integer :day
      t.integer :time
      t.string :am_pm
      t.string :event_name
      t.text :note
      t.string :category
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
