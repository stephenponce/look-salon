class AdminController < ApplicationController
  before_filter :login_required

  layout 'admin'

  def bulletin_board
  end

  def posts
  end

  def gallery
    @images = Image.find(:all, :order=>'position, created_at')  
  end

  def add_image
    @image = Image.new(params[:image])
    @image.position = Image.count

    if @image.save
      redirect_to url_for(:controller=>'admin', :action=>'gallery')
    else
      render :inline=> "<%= error_messages_for :image %>"
    end

  end


  def services
  end

  def posts
  end

end
