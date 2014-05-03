class Admin::DashboardController < AdminController
  def index
  	@posts = Post.all
  	@events = Event.order('date desc')
  	@albums = Album.all
  	@projects = Project.all
  	@videos = Video.all
  	@quotes = Quote.all
  end
end
