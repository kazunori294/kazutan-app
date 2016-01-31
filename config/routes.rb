Rails.application.routes.draw do
  get 'hosts/show'
  get 'hosts/new'
  get 'hosts/:id' => 'hosts#detail'
  get 'hosts/:id/edit' => 'hosts#edit'
  patch 'hosts/update' => 'hosts#update'
  post 'hosts/create' => 'hosts#create'
  get 'hosts/:id/destroy' => 'hosts#destroy'
  get 'hosts/:id/destroy' => 'hosts#destroy'
  get 'hosts/hostclass/:hostclass/search' => 'hosts#searchHostclass'


#  namespace :api, { format: 'json' } do
  namespace :api do
    resources :hosts
     get 'hosts/update/:ip/ipaddress' => 'hosts#updateIpaddress', ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/hostname' => 'hosts#updateHostname', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/hostclass' => 'hosts#updateHostclass', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/os' => 'hosts#updateOs', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/cpu_num' => 'hosts#updateCpu_num', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/cpu_model' => 'hosts#updateCpu_model', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/memory' => 'hosts#updateMemory', new: /[^\/]+/, ip: /[^\/]+/
     get 'hosts/update/:ip/ip/:new/subnet' => 'hosts#updateSubnet', new: /[^\/]+/, ip: /[^\/]+/
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
