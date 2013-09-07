class Admin::QuotesController < AdminController
  # GET /admin/posts
  # GET /admin/posts.json
  def index
    @quotes = Quote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quotes }
    end
  end
  
  def sort
    params[:quote].each_with_index do |id, index|
      Quote.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end
  

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
    @quote = Quote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /admin/posts/new
  # GET /admin/posts/new.json
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /admin/posts/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @quote = Quote.new(params[:quote])

    respond_to do |format|
      if @quote.save
        format.html { redirect_to [:admin, @quote], notice: 'Quote was successfully created.' }
        format.json { render json: @quote, status: :created, location: @quote }
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/posts/1
  # PUT /admin/posts/1.json
  def update
    @quote = Quote.find(params[:id])

    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        format.html { redirect_to [:admin, @quote], notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to admin_quotes_url }
      format.json { head :no_content }
    end
  end
end
