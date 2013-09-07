class Admin::PhotosController < AdminController
  # GET /admin/posts
  # GET /admin/posts.json
  def index
    @photos = Photo.all
    @photo = Photo.new
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /admin/posts/new
  # GET /admin/posts/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /admin/posts/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @photo = Photo.create(params[:photo])

    # respond_to do |format|
    #   if @photo.save
    #     format.html { redirect_to [:admin, @photo.photoable], notice: 'Photo was successfully created.' }
    #     format.json { render json: @photo, status: :created, location: @photo }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @photo.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  # PUT /admin/posts/1
  # PUT /admin/posts/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to [:admin, @photo], notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to admin_photos_url }
      format.json { head :no_content }
    end
  end
end
