Rails.application.routes.draw do
  # get 'greetings/hello'
  # get 'greetings/test'

  get '/mainpage' => 'mainpage#index'

  get '/new' => 'gallery#new'
  post '/create' => 'gallery#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
