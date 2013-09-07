class Admin::LinksController < AdminController

  def new
    @link = Link.new

    respond_to do |format|
      format.js 
    end
  end

end
