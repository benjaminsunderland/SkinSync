class SearchController < ApplicationController
  def body_parts
  end

  def styles
    @body_parts = [params[:arm], params[:back], params[:leg], params[:torso]]
    @body_parts_array = ["Arm", "Back", "Leg", "Torso"]
    @body_parts.each_with_index do |body_part, index|
        @body_parts_array.delete_at(index) if body_part == nil
    end
    @body_parts_string = @body_parts_array.join(',')
  end

end
