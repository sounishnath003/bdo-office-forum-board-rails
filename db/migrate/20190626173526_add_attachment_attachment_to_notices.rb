class AddAttachmentAttachmentToNotices < ActiveRecord::Migration[6.0]
  def self.up
    change_table :notices do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :notices, :attachment
  end
end
