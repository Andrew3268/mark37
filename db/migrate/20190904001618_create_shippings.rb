class CreateShippings < ActiveRecord::Migration[5.1]
  def change
    create_table :shippings do |t|
      t.integer :user_id
      t.string :ship_title
      t.text :ship_description

      t.timestamps
    end
  end
end
