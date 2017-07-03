Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search' => 'drugs#search'
  post '/results' => 'drugs#results'
  get '/' => 'drugs#index'
end
