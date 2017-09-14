class AddValueToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :customer_key, :string
  end
end
