require 'rails_helper'

RSpec.describe SearchController, type: :controller do

  describe "GET #body_parts" do
    it "returns http success" do
      get :body_parts
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #styles" do
    it "returns http success" do
      get :styles
      expect(response).to have_http_status(:success)
    end
  end

end
