class AddSearchToDepartments < ActiveRecord::Migration[6.0]
  def change
    add_column :departments, :search, :string
  end
end
