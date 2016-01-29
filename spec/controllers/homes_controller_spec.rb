require 'rails_helper'

RSpec.describe HomesController, type: :controller do
  describe 'render home page' do
    it 'render index page' do
      get :index
      expect(response).to render_template('index')
    end

    it 'calculate the result' do
      get :index, temperature: "50", type_id: "1"
      expect(assigns(:results)).to eq 122.0
      expect(History.count).to eq 1
    end
  end
end
