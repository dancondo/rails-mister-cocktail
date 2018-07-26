Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, except: [:show, :destroy]
  end
  resources :doses, only: [:show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
