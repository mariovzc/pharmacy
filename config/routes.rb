Rails.application.routes.draw do
  get '/admin', to: 'admin_dashboard#index'
  resources :sessions, only: [:new, :create, :destroy]
  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sellers, except: [:destroy] do 
    member do
      put :deactivate
    end
  end

end
