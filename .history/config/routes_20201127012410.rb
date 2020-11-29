Rails.application.routes.draw do
  default_url_options :host => "localhost:3001"

  resources :rooms, only: []
  resources :messages
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
    
    post 'http://localhost:3001/rails/active_storage/direct_uploads', to: 'direct_uploads#create'
    

end
