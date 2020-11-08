Rails.application.routes.draw do
  get 'foo', to: 'foo#index'
  get 'json_view', to: 'foo#json_view'
  resources :microposts
  resources :users
  resources :lee
  get 'welcome/index'
  root 'users#index'

  resources :articles do
    resources :comments
  end

end
