class AdminController < ApplicationController

  # http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']
  before_filter :authenticate_user!
  
  layout 'admin'

  def index
  end
end
