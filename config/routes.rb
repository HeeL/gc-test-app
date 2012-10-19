TestApp::Application.routes.draw do

    resources :users, :controller => 'agency/users' do
      member do
        post :toggle_admin_role
      end
    end

    resources :trips, :only => [:index, :new,:create,:show, :edit, :update], :controller => 'agency/trips' do
      resources :trip_pictures, :only => [:create, :show], :controller => 'agency/trip_pictures'  
    end

    resource :profile, :only => [:edit, :update], :controller => 'agency/profiles' do
      resources :logos, :only => [:create, :show], :controller => 'agency/logos'
    end

    resource :users, :only => [:edit, :update], :controller => 'agency/users' do
      resources :avatars, :only => [:create, :show], :controller => 'agency/avatars'
    end

  root :to => redirect("/profile/edit")
  


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #match 'passwords/edit' => 'devise#passwords'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
