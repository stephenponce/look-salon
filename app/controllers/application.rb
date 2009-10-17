# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

#page list for breadcrumb
#  pages = {'1'=>['index'], '2'=>['about', 'philosophy', 'people'], '3'=>['products']}


  #Used for admin authentication
  include AuthenticatedSystem

  

  def choose_layout
    if logged_in?
      'admin'
    else
      'main'
    end
  end

 #active scaffold defaults
 ActiveScaffold.set_defaults do |config| 
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
  end

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '3b9eaf4bb087a6a785369210d7e315cb'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
end
