class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :designation
      t.string :officer_name
      t.string :contact

      t.timestamps
    end
  end
end
