require 'rails_helper'

RSpec.describe RelationshipsController, type: :controller do

  describe "GET #followings" do
    it "returns http success" do
      get :followings
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #followers" do
    it "returns http success" do
      get :followers
      expect(response).to have_http_status(:success)
    end
  end

end
