class CreateTattoos < ActiveRecord::Migration[5.1]
  def change
    create_table :tattoos do |t|
      t.string :name
      t.string :image_link
      t.timestamps
    end
  end
end
