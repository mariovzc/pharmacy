Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sellers, except: [:destroy] do 
    member do
      put :deactivate
    end
  end
end
