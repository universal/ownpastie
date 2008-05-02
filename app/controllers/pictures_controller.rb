class PicturesController < ApplicationController
  # GET /pictures
  def index
    @pictures = Picture.find(:all, :order => "id DESC", :conditions => "parent_id is NULL")
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      flash[:notice] = 'Picture was successfully created.'
      redirect_to pictures_url     
    else
      render :action => :new
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to(pictures_url)
  end 
end
