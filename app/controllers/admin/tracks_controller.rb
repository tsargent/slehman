class Admin::TracksController < AdminController
  # GET /admin/posts
  # GET /admin/posts.json
  def index
    @tracks = Track.all
    @track = Track.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracks }
    end
  end

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
    @track = Track.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @track }
    end
  end

  # GET /admin/posts/new
  # GET /admin/posts/new.json
  def new
    @track = Track.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track }
    end
  end

  # GET /admin/posts/1/edit
  def edit
    @track = Track.find(params[:id])
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @track = Track.create(params[:track])

    # respond_to do |format|
    #   if @track.def save(args)
    #     
    #   end
    #   
    #     format.html { redirect_to [:admin, @track], notice: 'Track was successfully created.' }
    #     format.json { render json: @track, status: :created, location: @track }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @track.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /admin/posts/1
  # PUT /admin/posts/1.json
  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to [:admin, @track], notice: 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to admin_tracks_url }
      format.json { head :no_content }
    end
  end
end
