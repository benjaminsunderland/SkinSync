class AddRatingIdToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :rating_id, :integer
  end
end
