Rails.application.routes.draw do
  namespace :api do
    mount_devise_token_auth_for 'Guest', at: 'guest'
    mount_devise_token_auth_for 'Host', at: 'host'
    resources :rooms, only: [:index, :show] do
      resources :room_reviews, only: [:index]
    end
    get '/options', to: 'rooms#options'
  end
end
