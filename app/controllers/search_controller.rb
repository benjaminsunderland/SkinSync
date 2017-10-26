class SearchController < ApplicationController
  def body_parts
  end

  def styles
    @body_parts = [params[:arm], params[:back], params[:leg], params[:torso]]
  end

end
