Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :questionnaires, only: [:create]
    end
  end
end
