AngularJSWorkshopsBackend::Application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users do
    resources :comments
    resources :rates
    resources :tags
  end
  resources :rates
  resources :comments
  resources :movies do
    resources :comments
    resources :rates
    resources :tags
  end
end
