class CreateJoinTableTattooStyle < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tattoos, :styles do |t|
      # t.index [:tattoo_id, :style_id]
      # t.index [:style_id, :tattoo_id]
    end
  end
end
