module AdminHelper
  def crosswalk_to_live_site
    if current_page?(:controller=>'promos', :action=>'index')
      "<li>#{link_to("> Promotions", :controller=>'info', :action=>'promotions')} </li>"
    end
  end
  def send_link_to
  end
end
