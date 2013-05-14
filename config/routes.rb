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
    end
  end

  resources :tags, :only => [:create]

end