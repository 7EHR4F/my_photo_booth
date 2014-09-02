Balder::Application.routes.draw do
  resources :photo_carts

  resources :carts


  resources :payments

  get "add_to_cart" => 'photo_carts#add_to_cart', as: 'add_to_cart'
  get "remove_from_cart" => 'photo_carts#remove_from_cart', as: 'remove_from_cart'
  resource :account, :controller => :users
  match "login", :to => "user_sessions#new", :as => :login
  match "authenticate", :to => "user_sessions#create", :as => :authenticate
  match "logout", :to => "user_sessions#destroy", :as => :logout
  
  resources :authentications
  match '/auth/:provider/callback' => 'authentications#create'
  
  resources :photos do
    collection do
      get :untouched
      post :edit_multiple
      put :update_multiple
      get :upload
      get :scan
    end
  end
  resources :albums do
    collection do
      get :untouched
    end
    resources :tags do
      resources :photos do
        collection do
          get :untouched
          get :upload
          get :edit_multiple
        end
      end
    end
    resources :photos do
      collection do
        get :untouched
        get :upload
        get :edit_multiple
      end
    end
  end
  resources :collections do
    resources :albums do
      resources :photos do
        collection do
          get :untouched
          get :upload
          get :edit_multiple
        end
      end
    end
  end
  
  resources :tags, :shallow => true do
    resources :photos
    resources :albums
  end

  resources :users, :controller => "admin/users"
  
  root :to => "collections#index"

end
