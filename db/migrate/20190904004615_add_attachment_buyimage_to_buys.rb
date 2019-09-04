class AddAttachmentBuyimageToBuys < ActiveRecord::Migration[5.1]
  def self.up
    change_table :buys do |t|
      t.attachment :buyimage
    end
  end

  def self.down
    remove_attachment :buys, :buyimage
  end
end
