Rails.application.routes.draw do
  get '/admin', to: 'admin_dashboard#index'
  get '/manager', to: 'manager_dashboard#index'
  get '/seller', to: 'seller_dashboard#index'

  resources :sessions, only: [:new, :create, :destroy]
  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out

  resources :sellers, except: [:destroy] do
    member do
      put :deactivate
    end
  end
end
