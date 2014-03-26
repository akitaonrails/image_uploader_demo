require 'spec_helper'

describe PhotosController do
  render_views

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      expect(response.body).to match("Login")
    end
  end

  describe 'logged in user' do
    let(:user) { create(:user) }
    before { sign_in(user) }
    it "should be successful" do
      get 'index'
      expect(response.body).to match("Logout")
    end
  end

end

