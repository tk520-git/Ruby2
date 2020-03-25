class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger
  #test
  #test2
end
