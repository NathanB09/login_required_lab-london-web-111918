Rails.application.routes.draw do
  get 'sessions/new'
  root 'application#home'
  get "/login", to: "sessions#new"
  post '/login', to: "sessions#create"
  post '/logout', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
end
