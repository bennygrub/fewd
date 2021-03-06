Fewd::Application.routes.draw do
  resources :email_updates

  resources :dish_foods

  resources :foods

  resources :diet_dishes

  resources :diets

  resources :restaurant_services

  resources :services
  
  get "hoods/search"
  get "hoods/exact"
  resources :hoods do
    member do
      #get :mood
      get :moods
      get 'mood/:mood_id', :action => 'mood', :as => 'mood'
      get :foods
      get 'food/:food_id', :action => 'food', :as => 'food'
      get :diets
      get 'diet/:diet_id', :action => 'diet', :as => 'diet'
      
    end
  end

  resources :dish_moods

  resources :moods

  resources :dish_images

  resources :dishes

  resources :restaurants

  get "pages/home"
  get "pages/about"
  get "pages/contact"
  get "pages/faq"
  get "pages/search"
  get "pages/move"

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#move'

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
