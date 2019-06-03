Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get '/users', to: 'users#index', as: 'users'  #all users
  post '/users', to: 'users#create' #create new user
  get '/users/new', to: 'users#new', as: 'users_new' #show newest user
  get '/users/:id/edit', to: 'users#edit' #edit a single user based on ID
  get '/users/:id', to: 'users#show' #show single user
  patch '/users/:id', to: 'users#update' #updates user
  put '/users/:id', to: 'users#update' #updates with PUT
  delete '/users/:id', to: 'users#destroy' #destroys a user

end
