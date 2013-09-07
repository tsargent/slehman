class ApplicationController < ActionController::Base
  protect_from_forgery
  
  if (ENV['ENV'] == 'staging')
    http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']
  end
  
end
