class Admin::ProjectsController < AdminController
  # GET /admin/projects
  # GET /admin/projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  def sort
    params[:project].each_with_index do |id, index|
      Project.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
  

  # GET /admin/projects/1
  # GET /admin/projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /admin/projects/new
  # GET /admin/projects/new.json
  def new
    @project = Project.new
    @project.build_photo
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /admin/projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /admin/projects
  # POST /admin/projects.json
  def create
    @project = Project.new(params[:project])
    
    if params[:tracks]
      @project.tracks.delete_all
      params[:tracks].map { |track| @project.tracks << Track.find(track) }
    else
      @project.tracks.delete_all
    end
    

    respond_to do |format|
      if @project.save
        format.html { redirect_to [:admin, @project], notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/projects/1
  # PUT /admin/projects/1.json
  def update
    @project = Project.find(params[:id])
    
    
    if params[:tracks]
      @project.tracks.delete_all
      params[:tracks].map { |track| @project.tracks << Track.find(track) }
    else
      @project.tracks.delete_all
    end
    
    
    if !params[:photo_id].empty?
      @project.photo = Photo.find(params[:photo_id])
    else
      @project.photo = nil
    end
    

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to [:admin, @project], notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/projects/1
  # DELETE /admin/projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to admin_projects_url }
      format.json { head :no_content }
    end
  end
end
