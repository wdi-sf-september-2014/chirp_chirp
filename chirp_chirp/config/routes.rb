Rails.application.routes.draw do

  root :to => 'login#index'

  post '/' => 'login#authenticate'

  post '/logout' => 'login#logout'

  get '/feed' => 'chirp#index'

  post '/feed' => 'chirp#create'

  get 'edit/:id' => 'chirp#show'

  post 'edit/:id' => 'chirp#update'

  post '/logout' => 'login#logout'

end
