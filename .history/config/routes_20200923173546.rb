# Rails.application.routes.draw do
#   post 'user_token' => 'user_token#create'
#   resources :users
#   resources :requests
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  scope '/auth' do
    post '/signin', to: 'user_token#create'
    post '/signup', to: 'users#create'
    resources :users
  end
    resources :requests

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
