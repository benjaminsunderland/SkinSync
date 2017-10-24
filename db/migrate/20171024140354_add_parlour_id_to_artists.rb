class AddParlourIdToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :parlour_id, :integer
  end
end
