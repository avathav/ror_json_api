module AuthHelper
  def http_user_login
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials('user@example.com','user@example.com')
  end
  def http_admin_login
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials('admin@example.com','admin@example.com')
  end
end