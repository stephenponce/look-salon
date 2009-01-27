class AdminController < ApplicationController
  before_filter :login_required

  layout 'admin'

  def panel
  end

end
