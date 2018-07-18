Rails.application.routes.draw do
  # get 'greetings/hello'
  # get 'greetings/test'

  get '/mainpage' => 'mainpage#index'

  # get '/new' => 'gallery#new' , as:'new'
  # post '/new' => 'gallery#create' , as:'create'

  get '/new' => 'appointment#new' , as:'new'
  post '/new' => 'appointment#create' , as:'create'

  get '/product' => 'product#index' 
  get '/product_new' => 'product#new' , as:'product_new'
  post '/product_new' => 'product#create' , as:'product_create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
