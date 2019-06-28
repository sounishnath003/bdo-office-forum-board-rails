class AddApiTokenToNotices < ActiveRecord::Migration[6.0]
  def change
    add_column :notices, :api_token, :string
  end
end
