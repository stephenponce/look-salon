module ImagesHelper
  def send_confirmation_message
    msg = "Gallery has been updated"
    page.replace_html 'ajax_message', msg
    page.visual_effect :appear, 'ajax_message', :duration=>0.5
    page.visual_effect :highlight, 'ajax_message', :duration=>2, :endcolor=>"#B8860B", :startcolor=>"#EAEAAE", :restore_color=>"#DBDB70"
  end
end
