LunchTracker::Application.routes.draw do
  root :to => 'home#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :restaurants do
    collection do
      get 'search'
      get 'validate_address'
      get 'filter/:tag_id', :action => :filter, :as => :filter
      put '/toggle_thumb/:id' => 'restaurants#toggle_thumb'
    end
  end

  resources :tags, :only => [:create]
  resources :comments do
    collection do
      get '/new/comment/:review_id' => 'comments#new'
      get '/comments/:review_id' => 'comments#show'
    end
  end
  resources :reviews do
    collection do
      get '/show/:restaurant_id' => 'reviews#show'
      get '/new/review/:restaurant_id' => 'reviews#new'
    end
  end

end