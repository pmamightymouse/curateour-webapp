require 'rails_helper'

RSpec.describe Api::V1::SessionsController do

  context 'when validating user credentials' do

    let(:user) { create(:user) }

    def do_post(params)
      post :create, user: params, format: 'json'
    end

    it 'returns ok if the user details match' do
      do_post email: user.email, password: 'p@ssw0rd'
      expect(response).to be_ok
    end

    it 'fails if the user is not found' do
      do_post email: 'not-a-valid-email', password: 'p@ssw0rd'
      expect(response).to be_forbidden
    end

    it 'fails if the password does not match' do
      do_post email: user.email, password: 'nope'
      expect(response).to be_forbidden
    end

  end

end