Stevelehman::Application.routes.draw do


  # devise_for :users, :controllers => {
  #   :sessions => "admin/sessions",
  #   :passwords => "admin/passwords",
  #   :registrations => "admin/registrations"
  # }

  devise_for :users,
    :controllers => {
      :sessions => "admin/sessions",
      :passwords => "admin/passwords",
      :registrations => "admin/registrations"
    }, :skip => [:registrations]
      as :user do
        get 'users/edit' => 'admin/registrations#edit', :as => 'edit_user_registration'
        put 'users/:id' => 'admin/registrations#update', :as => 'user_registration'
      end

  post "/emails/subscribe" => "emails#subscribe"
  post "/emails/message" => "emails#message"

  %w[press contact music bio selebeyone].each do |page|
    get page, controller: 'pages', action: page
  end


  resources :videos
  # resources :posts
  resources :projects
  get "events/past" => "events#past"
  resources :events

  resources :articles, :path => 'scholarship'

  resources :posts, :path => "news", :singular => "news"

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
    namespace :admin do

      # Directs /admin/products/* to Admin::ProductsController
      # (app/controllers/admin/products_controller.rb)
      resources :articles
      resources :pages
      resources :events
      resources :projects do
        collection do
          post 'sort'
        end
      end

      resources :quotes do
        collection do
          post 'sort'
        end
      end
      resources :links
      resources :photos
      resources :documents
      resources :posts
      resources :tracks

      resources :videos do
        collection do
          post 'sort'
        end
      end

      resources :albums do
        collection do
          post 'sort'
        end
      end
      root :to => 'dashboard#index'
      authenticated :user do
        # root :to => "dashboard#index"
      end



    end



  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action(/:id))(.:format)'
  get "emails/new"


end
