class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image
      t.integer :event_id

      t.timestamps
    end
  end
end
