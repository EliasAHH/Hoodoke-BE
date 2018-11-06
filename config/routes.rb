Rails.application.routes.draw do
  resources :users, :songs,:scores

post '/auth', to: 'auth#create'
get '/current_user', to: 'auth#show'
end
