require 'rails_helper'

RSpec.describe Api::V1::StopsController do

  context 'creating' do

    let(:tour) { create(:tour) }

    before do
      sign_in tour.user
    end

    def do_post(params)
      post :create, stop: params, tour_id: tour.id, format: 'json'
    end

    it 'creates the stop' do
      do_post(
        title: 'Monet 1',
        media_type: 'text',
        media: 'This is a monet',
        item_id: "37475",
        stop_number: 1,
      )

      expect(response).to be_ok
      expect(assigns[:stop]).not_to be_new_record
      expect(assigns[:stop].attributes).to include(
                                             "stop_number" => 1,
                                             "title" => 'Monet 1',
                                             "item_id" => '37475',
                                           )
    end

  end

end