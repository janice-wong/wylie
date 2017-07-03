Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/drugs' => 'drugs#index'
      get '/search' => 'drugs#search'
    end
  end

  get '/' => 'drugs#index'
end
