Rails.application.routes.draw do

  root 'application#index'

  namespace :api do
    namespace :v1 do
      resources :menus
      resources :profiles
    end
  end
end
