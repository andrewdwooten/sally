Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:create], defaults: {format: 'json'}
    end
  end
end
