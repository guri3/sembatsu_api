class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session # @TODO CORF対策
  include DeviseTokenAuth::Concerns::SetUserByToken
end
