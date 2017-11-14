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
      get 'admin_deals', to: 'deals#all_deals'
      get 'all_deals', to: 'deals#all_deals'
      get 'todays_deals', to: 'deals#todays_deals'
      # get 'deals/former_deals', to: 'deals#former_deals'
      # get 'deals/future_deals', to: 'deals#future_deals'

    end
  end
end
