V1::Application.routes.draw do
  
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_up: 'create_new_stranger' }

  root :to => 'home#index'
  
  match 'projects/project_show_via_ajax_call' => 'projects#project_show_via_ajax_call', :via => [:get], :as => 'project_show_via_ajax_call'
  match 'home/testing' => 'home#testing', :via => [:get], :as => 'testing'
  match 'private' => 'home#private', :via => [:get], :as => 'private'
  
  
  resources :blogs
  resources :portfolios
  resources :heros
  resources :cms
  resources :abouttbs
  resources :aboutbbs
  resources :projects
  resources :startupheaders
  resources :startups
  resources :contacts
  resources :clients
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
