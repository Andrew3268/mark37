class CreateBuycomments < ActiveRecord::Migration[5.1]
  def change
    create_table :buycomments do |t|
      t.text :buybody
      t.references :user, foreign_key: true
      t.references :buy, foreign_key: true

      t.timestamps
    end
  end
end
