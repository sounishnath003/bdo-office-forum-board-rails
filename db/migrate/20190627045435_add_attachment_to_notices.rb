class AddAttachmentToNotices < ActiveRecord::Migration[6.0]
  def change
    add_column :notices, :attachment, :string
  end
end
