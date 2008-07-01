class PastesController < ApplicationController
  # GET /pastes/:id/diff/:version
  def diff
    logger.info params
    @paste = Paste.find(params[:id])
    @old_paste = @paste.versions.find_by_version(params[:version])
  end

  # GET /pastes
  def index
    @pastes = Paste.find(:all, :order => "id DESC")
  end

  # GET /pastes/1
  def show
    @paste = Paste.find(params[:id])
  end

  # GET /pastes/new
  def new
    @paste = Paste.new
  end

  # GET /pastes/1/edit
  def edit
    @paste = Paste.find(params[:id])
  end

  # POST /pastes
  def create
    @paste = Paste.new(params[:paste])
    if @paste.save
      flash[:notice] = 'Paste was successfully created.'
      redirect_to(@paste)
    else
      render :action => "new"
    end
  end

  # PUT /pastes/1
  def update
    @paste = Paste.find(params[:id])
    if @paste.update_attributes(params[:paste])
      flash[:notice] = 'Paste was successfully updated.'
      redirect_to(@paste)
    else
      render :action => "edit"
    end
  end

  # DELETE /pastes/1
  def destroy
    @paste = Paste.find(params[:id])
    @paste.destroy
    redirect_to(pastes_url)
  end
end
