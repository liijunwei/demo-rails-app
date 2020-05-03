Rails.application.routes.draw do
  resources :microposts
  resources :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :articles do
    resources :comments
  end

end
