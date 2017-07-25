Rails.application.routes.draw do
  root to: 'drugs#index'

  get '/download' => 'downloads#index'

  namespace :api do
    namespace :v1 do
      get '/drugs' => 'drugs#index'
      get '/search' => 'drugs#search'
    end
  end
end
