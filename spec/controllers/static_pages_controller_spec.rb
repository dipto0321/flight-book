require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      skip
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      skip
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    skip
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
