class CreateJoinTableTattooBodyPart < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tattoos, :body_parts do |t|
      # t.index [:tattoo_id, :body_part_id]
      # t.index [:body_part_id, :tattoo_id]
    end
  end
end
