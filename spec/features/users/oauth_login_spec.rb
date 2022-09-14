require 'rails_helper'

RSpec.describe 'OAuth Login with Google' do
  context 'happy path' do
    before(:each) do
      # OmniAuth.config.test_mode = true
    end
    it 'redirects and creates a new user' do
      visit '/auth/google_oauth2'
    end
  end
end