Rails.application.routes.draw do
  resources :requests_rooms
  # default_url_options :host => "localhost:3001"
  default_url_options :host => "peeps-platform.herokuapp.com"



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
    
    get 'deactivate/:id', to: 'requests_users#de_activate'

    get 'republish', to: 'requests#re_publish'

    get 'republishroom', to: 'rooms#republish_room'

   get ""
    
    post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
    

end
