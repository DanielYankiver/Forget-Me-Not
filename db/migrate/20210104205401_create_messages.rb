class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :event_id
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
