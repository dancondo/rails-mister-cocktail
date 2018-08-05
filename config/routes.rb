Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/delete'
  get 'reviews/edit'
  get 'reviews/update'

  root to: "pages#home"
  resources :cocktails do
    resources :doses, except: [:show, :destroy]
    resources :reviews, except: [:show, :index]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
