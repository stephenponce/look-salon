class InfoController < ApplicationController
  layout 'main'


  def index
    @post=Post.find(:first)
  end

  def contact
  end

  def about
  end
 
  def services
    @tags = Tag.find(:all)
    @services = Service.find(:all)
  end
  
end
