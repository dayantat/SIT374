Rails.application.routes.draw do
#Get Requests

  get 'sessions/new'
  get 'users/new'
    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    get '/signup', to: 'users#new'
    get '/login', to: 'sessions#new'

#Post Requests
    post '/signup', to: 'users#create'
    post '/login', to: 'sessions#create'

#Delete Requests

    delete '/logout', to: 'sessions#destroy'
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
