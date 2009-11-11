# Methods added to this helper will be available to all templates in the application.
module InfoHelper
  def breadcrumb(page)
    html=""
    case page
      when "index" then
         " <span class='teal_grey'>01. </span> Home "
      when "about" then
         " <span class='teal_grey'>02. </span> About Us " 
      when "philosophy" then
         " <span class='teal_grey'>02. </span> About Us " 
      when "people" then
         " <span class='teal_grey'>02. </span> About Us " 
      when "staff" then
         " <span class='teal_grey'>02. </span> About Us " 
      when "products" then
	 " <span class='teal_grey'>03. </span> Products "
      when "services" then
         " <span class='teal_grey'>04. </span> Services "
      when  "show_service" then
         " <span class='teal_grey'>04. </span> Services "
      when "promotions" then
	 " <span class='teal_grey'>05. </span> Promotions "
      when "gallery" then
	 " <span class='teal_grey'>06. </span> Gallery "
      when "appointments" then
	 " <span class='teal_grey'>07. </span> Appointments "
      when "contact" then
	 " <span class='teal_grey'>08. </span> Contact"
      else ""
    end
  end
end

