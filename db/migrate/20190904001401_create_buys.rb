class CreateBuys < ActiveRecord::Migration[5.1]
  def change
    create_table :buys do |t|
      t.integer :user_id
      t.string :buy_title
      t.text :buy_description

      t.timestamps
    end
  end
end
