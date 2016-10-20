require 'rails_helper'

RSpec.describe CarSimulatorController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #year" do
    it "returns http success" do
      get :year
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #make" do
    it "returns http success" do
      get :make
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #accelerate" do
    it "returns http success" do
      get :accelerate
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #brake" do
    it "returns http success" do
      get :brake
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #speed" do
    it "returns http success" do
      get :speed
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #lights" do
    it "returns http success" do
      get :lights
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #toggle" do
    it "returns http success" do
      get :toggle
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #parking_brake" do
    it "returns http success" do
      get :parking_brake
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #set_parking_brake" do
    it "returns http success" do
      get :set_parking_brake
      expect(response).to have_http_status(:success)
    end
  end

end
