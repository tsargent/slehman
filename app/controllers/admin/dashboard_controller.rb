class Admin::DashboardController < AdminController
  def index
  	@posts = Post.all
  	@events = Event.all
  	@albums = Album.all
  	@projects = Project.all
  	@videos = Video.all
  	@quotes = Quote.all
  end
end
