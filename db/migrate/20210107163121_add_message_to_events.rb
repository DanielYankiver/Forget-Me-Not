class AddMessageToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :message, :text
  end
end
