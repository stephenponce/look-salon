class InfoController < ApplicationController
  layout 'main', :except=>[:show_image_ajax]

  def show_image_ajax
    logger.info params.inspect

    @display = Image.find(params[:id])
    render(:update) { |page| page.replace_html 'image_wrapper', "<img src='#{@display.public_filename}' >"}
  end

  def index
    @posts=Post.find(:all, :limit=>3)

    @main_post = @posts[0]

    @images = Image.find(:all, :limit=>5, :conditions=> {:parent_id => nil})

    respond_to do |format|
      format.html #index.html.erb
    end
  end

  def contact
  end

  def about
    respond_to do |format|
      format.html
      format.js
    end

  end
 
  def services
    redirect_to :action=>'show_service', :id=>1
#    @tags = Tag.find(:all)
#    @services = Service.find(:all)
  end
  def show_service
    @tags= Tag.find(:all)
    @display_tag = Tag.find(params[:id])
  end

  def gallery
    @images = Image.find(:all, :conditions=> {:parent_id => nil, :stylist_id=> nil})
  end
  def people
    @images = Image.find(:all, :conditions=> {:parent_id => nil}, :limit=>3)
  end
  
end
