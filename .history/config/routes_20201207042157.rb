Rails.application.routes.draw do
  default_url_options :host => "localhost:3001"

  resources :rooms#, only: [:index, :show]
  resources :messages#, only: [:index, :create]
  resources :requests_users
   scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'

  end



  
    resources :users

    resources :requests
    mount ActionCable.server => '/cable'

    get 'samevolunteer/:id', to: 'requests_users#samevolunteer'
    
    get 'fulfilrequest/:id', to: 'requests_users#fulfilrequest'

    
    post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
    
    get 'getlast', to: 'users#getlast'

end
