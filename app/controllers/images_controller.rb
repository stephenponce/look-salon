class ImagesController < ApplicationController
  layout :choose_layout
  active_scaffold :post

  # GET /images
  # GET /images.xml
  def index
    #this ensures that only the original images are chosen and excludes the thumbnails
    @images = Image.find(:all, :conditions=> {:parent_id => nil} , :order=>'position, created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new
#    @image_tag = ImageTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])
    
    respond_to do |format|
      if @image.save
        flash[:notice] = 'Image was successfully created.'
        format.html { redirect_to(:controller=>'admin', :action=>'gallery') }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        flash[:notice] = 'Image was successfully updated.'
        format.html { redirect_to(@image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end

  def update_caption
    @image = Image.find(params[:id])
    @image.caption = @params[:value]
    if @image.save
      render :text => textilight(@image.caption)
    end
  end

  def sort
    image_ids = @params[:image_list]
    image_ids.each_with_index do | image_id, index |
      image = Image.find asset_id
      image.update_attributes(:position, index)
    end
    render :nothing => true
  end

  
end
