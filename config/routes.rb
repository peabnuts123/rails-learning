Rails.application.routes.draw do
  root action: :index, controller: 'welcome'

  resources :articles

  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
