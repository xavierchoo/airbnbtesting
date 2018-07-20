Rails.application.routes.draw do
  # get 'greetings/hello'
  # get 'greetings/test'

  get '/mainpage' => 'mainpage#index', as:'home'

  # get '/new' => 'gallery#new' , as:'new'
  # post '/new' => 'gallery#create' , as:'create'

  get '/new' => 'appointment#new' , as:'new'
  post '/new' => 'appointment#create' , as:'create'

  get '/product' => 'product#index' 
  get '/product_new' => 'product#new' , as:'product_new'
  post '/product_new' => 'product#create' , as:'product_create'

  get '/appointment' => 'appointment#index' 
  get '/appointment_new' => 'appointment#new' , as:'appointment_new'
  post '/appointment_new' => 'appointment#create' , as:'appointment_create'

  post '/like' => 'likes#update'
  get '/get_like' => 'likes#get'
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  get '/signup' => 'users#new', as: 'sign_up'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/weather' => 'weather#new'
end
