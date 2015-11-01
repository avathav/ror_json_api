require 'rails_helper'
require 'helpers/auth_helper'

RSpec.describe Api::V1::ApplicationController, type: :controller do
  include AuthHelper

  describe "API authentication"  do

    it "authentication " do
      http_user_login
    end
  end
end
