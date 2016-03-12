require 'rails_helper'

RSpec.describe Api::V1::ToursController do

  let(:user) { create(:user) }

  context '#create' do

    def do_post(tour)
      post :create, tour: tour, format: 'json'
    end

    before do
      sign_in user
    end

    let(:name) { 'Sample tour' }

    it 'creates the tour' do
      do_post(name: name)

      expect(response).to be_ok
      expect(assigns[:tour]).not_to be_new_record
      expect(assigns[:tour].name).to eq(name)
    end

  end

end