class SearchController < ApplicationController
  def body_parts
  end

  def styles
    @body_parts = params.permit(:arm, :back, :leg, :torso)
  end
end
