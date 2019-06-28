class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :photo

      t.timestamps
    end
  end
end
