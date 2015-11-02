module Api
  module V1
    class ApplicationController < ActionController::Base
      # Prevent CSRF attacks by raising an exception.
      # For APIs, you may want to use :null_session instead.
      protect_from_forgery with: :exception

      before_filter :parse_request, :check_auth


      def check_auth
        authenticate_or_request_with_http_basic do |username,password|
          resource = User.find_by_email(username)
          if resource.valid_password?(password)
            sign_in :user, resource
          end
        end
      end

      def parse_request
        @json = JSON.parse(request.body.read)
      end
    end
  end
end
