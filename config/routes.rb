Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions
      resources :user_deals
      resources :deals
      resources :admins

      get 'current_user', to: 'users#currentUser'
      post 'user_deal', to: 'users#user_deal'
    end
  end
end
