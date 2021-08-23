Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :admins, only: [:create, :show, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
