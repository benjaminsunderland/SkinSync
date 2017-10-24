class CreateParlours < ActiveRecord::Migration[5.1]
  def change
    create_table :parlours do |t|
      t.string :name
      t.string :location
      t.string :contact
      t.string :description

      t.timestamps
    end
  end
end
