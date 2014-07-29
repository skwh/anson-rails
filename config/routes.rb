AnsonRails::Application.routes.draw do
  
  root 'static_pages#home'

  get '/about' => 'static_pages#about'

  post '/verify' => 'project#verify'

  get '/login' => 'static_pages#login'

  get '/projects/:id' => 'project#show', as: :project
  get '/projects/:id/edit' => 'project#edit', as: :project_edit
  get '/projects/:id/delete' => 'project#destroy', as: :project_destroy
  patch '/projects/:id/' => 'project#update', as: :project_update
  get '/newproj' => "project#new"
  post '/projects' => "project#create"

  post '/images' => "image#create"
  patch '/images/:id' => 'image#update', as: :image_update
  get '/images/:id/delete' => 'image#destroy', as: :image_destroy

  get '/page_data/:id' => 'static_pages#static_path', as: :static_datum
  get '/page_data/:id/edit' => 'static_pages#edit', as: :static_data_edit
  patch '/page_data/:id' => 'static_pages#update', as: :static_data_update

  get '/animation' => 'project#anim'
  get '/design' => 'project#redirect'
  get '/art' => 'project#art'
  get '/effects' => 'project#effects'

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
