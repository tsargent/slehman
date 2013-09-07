class Admin::DocumentsController < AdminController
  # GET /admin/posts
  # GET /admin/posts.json
  def index
    @documents = Document.all
    @document = Document.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

  # GET /admin/posts/new
  # GET /admin/posts/new.json
  def new
    @document = Document.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  # GET /admin/posts/1/edit
  def edit
    @document = Document.find(params[:id])
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @document = Document.create(params[:document])

    # respond_to do |format|
    #   if @document.def save(args)
    #     
    #   end
    #   
    #     format.html { redirect_to [:admin, @document], notice: 'Document was successfully created.' }
    #     format.json { render json: @document, status: :created, location: @document }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @document.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /admin/posts/1
  # PUT /admin/posts/1.json
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        format.html { redirect_to [:admin, @document], notice: 'Document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to admin_documents_url }
      format.json { head :no_content }
    end
  end
end
