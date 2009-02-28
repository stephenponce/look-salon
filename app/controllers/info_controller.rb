class InfoController < ApplicationController
  layout 'main'


  def index
    @post=Post.find(:first)
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
    @tags = Tag.find(:all)
    @services = Service.find(:all)
  end
  def show_service
    @tags= Tag.find(:all)
    @tag = Tag.find(params[:id])
  end
  
end
