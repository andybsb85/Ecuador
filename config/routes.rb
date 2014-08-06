Rails.application.routes.draw do
  get 'gallery/index'

  resources :users
  resources :activities
  resources :countries
  resources :regions
  resources :cities
  resources :type_destinations
  resources :destinations
  resources :events
  resources :line_destinations
  resources :plans
  resources :events
  resources :ratings
  get 'destination_list/index'
  get 'list_event/index'
  resources :type_activities
  get 'list_activity/index'
 # devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
 
 
  get 'welcome/index'
  
  scope '(:locale)' do
    resources :countries
    resources :regions
    resources :cities
    resources :type_destinations
    resources :destinations
    resources :events
    get 'destination_list/index'
    resources :type_activities
    resources :activities
    get 'list_activity/index'
    get 'gallery/index'
    devise_for :users, controllers: {registrations: 'registrations', sessions: 'sessions', passwords: 'passwords'}, path_names: { sign_out: "logout"}
    devise_for :admins
    
    root 'welcome#index', as: 'index', via: :all
  end

 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
