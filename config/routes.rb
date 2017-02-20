Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :suppliers do
    resources :products
  end
  
  resources :distributors do 
    resource :profile
  end
  
  root 'blanks#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
