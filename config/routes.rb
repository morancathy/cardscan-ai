Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'members/index'
      post 'members/create'
      get '/show/:id', to: 'members#show'
      delete '/destroy/:id', to: 'members#destroy'
    end
  end
  root 'homepage#index'

    # catch all route
  get '/*path' => 'homepage#index'
  # get 'homepage/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
