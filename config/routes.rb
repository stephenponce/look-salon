ActionController::Routing::Routes.draw do |map|
# A bunch of admin re-routing to the actual controllers
  map.connect 'admin/', :controller=>'admin', :action=>'bulletin_board'
  map.connect 'admin/home', :controller=>'admin', :action=>'bulletin_board'
  map.connect 'admin/index', :controller=>'admin', :action=>'bulletin_board'
  map.connect 'admin/bulletin_board', :controller=>'admin', :action=>'bulletin_board'

  map.connect 'admin/promos', :controller=>'promos', :action=>'index'

  map.photo_gallery 'admin/gallery', :controller=>'images', :action=>'index'
  map.connect 'admin/stylists', :controller=>'stylists', :action=>'index'
  map.connect 'admin/services', :controller=>'services', :action=>'index'
  map.connect 'admin/service_types', :controller=>'tags', :action=>'index'
  map.connect 'admin/posts', :controller=>'posts', :action=>'index'

  map.staff_profile 'image/staff_profile/:id', :controller=>'images', :action=>'staff_profile'
  map.display_all 'image/display_all', :controller=>'images', :action=>'display_all'
  map.connect 'info/home', :controller=>'info', :action=>'index'



  # used to redirect pages that are not production ready
  #map.connect 'info/products', :controller=>'info', :action=>'coming_soon'
  #map.connect 'info/appointments', :controller=>'info', :action=>'coming_soon'

  # map.with_options :controller=>'info' do |i|
  #  i.products '/info/coming_soon', :action=>'products'
  # end


  map.resources :promos, :active_scaffold => true

  map.resources :tags, :active_scaffold => true

  map.resources :services, :active_scaffold => true

  map.resources :posts, :active_scaffold => true
  map.resources :testimonials, :active_scaffold=>true

  map.resources :images

  map.resources :stylists, :has_many=> :images

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "info"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  # "Catch All Routing to Request_Error Page"
  #  map.connect '*', :controller=>'info', :action=>'request_error'
end
