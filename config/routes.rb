Rails.application.routes.draw do
  # get 'dose/show'
  # get 'dose/create'
  # get 'dose/new'
  # get 'dose/delete'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:show, :create]
  end
end
