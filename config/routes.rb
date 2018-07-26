Rails.application.routes.draw do
  root to: "cocktails#home"
  resources :cocktails do
    resources :doses, except: [:show, :destroy]
  end
  resources :doses, only: [:index , :destroy, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
