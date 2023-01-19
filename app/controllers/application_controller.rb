class ApplicationController < ActionController::API

  include ActionController::HttpAuthentication::Token
  before_action :set_default_format

  def json_payload
    HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  end

  def set_default_format
    request.format = :json
  end
end
