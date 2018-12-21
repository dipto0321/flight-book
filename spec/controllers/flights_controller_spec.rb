require 'rails_helper'

RSpec.describe FlightsController, type: :controller do

  describe "GET #index" do
    skip
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      skip
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      skip
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      skip
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
