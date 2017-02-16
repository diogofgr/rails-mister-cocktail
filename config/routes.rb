Rails.application.routes.draw do

  get 'doses/new'

  root 'cocktails#index'

  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, only: [:create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
