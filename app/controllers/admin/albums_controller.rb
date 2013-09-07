class Admin::AlbumsController < AdminController

  def index
    @albums = Album.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end
  
  def add_link
    @album = Album.find(params[:id])
    respond_to do |format|
      format.js #add_question.js.erb
    end
  end

  def sort
    params[:album].each_with_index do |id, index|
      Album.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  def show
    @album = Album.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  def new
    
    @album = Album.new
    @album.build_photo

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(params[:album])
    
    if params[:tracks]
      @album.tracks.delete_all
      params[:tracks].map { |track| @album.tracks << Track.find(track) }
    else
      @album.tracks.delete_all
    end
    
    
    

    respond_to do |format|
      if @album.save
        format.html { redirect_to [:admin, @album], notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @album = Album.find(params[:id])
    
    puts params[:tracks]

    if params[:tracks]
      @album.tracks.delete_all
      params[:tracks].map { |track| @album.tracks << Track.find(track) }
    else
      @album.tracks.delete_all
    end


    if !params[:photo_id].empty?
      @album.photo = Photo.find(params[:photo_id])
    else
      @album.photo = nil
    end




    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to [:admin, @album], notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to admin_albums_url }
      format.json { head :no_content }
    end
  end
end
