class CreateJoinTableTattooArtist < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tattoos, :artists do |t|
      # t.index [:tattoo_id, :artist_id]
      # t.index [:artist_id, :tattoo_id]
    end
  end
end
