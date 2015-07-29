Rails.application.routes.draw do





  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'projects/index'

  get 'projects/new'

  get 'projects/create'

  get 'projects/show'

  get 'projects/edit'

  get 'projects/update'

  get 'projects/destroy'

  get 'jobprospects/index'

  get 'jobprospects/new'

  get 'jobprospects/create'

  get 'jobprospects/show'

  get 'jobprospects/edit'

  get 'jobprospects/update'

  get 'jobprospects/destroy'

  get 'coverletters/index'

  get 'coverletters/new'

  get 'coverletters/create'

  get 'coverletters/show'

  get 'coverletters/edit'

  get 'coverletters/update'

  get 'coverletters/destroy'

  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/show'

  get 'resumes/edit'

  get 'resumes/update'

  get 'resumes/destroy'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'




    root "users#new"
    resources :users
    resources:resumes
    resources:coverletters
    resources:jobprospects
    resources :projects

    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    get "logout", to: "sessions#destroy"

    get "resumes" =>"resumes#index"
    get "coverletters" =>"coverletters#index"
    get "projects" =>"projects#index"
    get "jobprospects" =>"jobprospects#index"






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
