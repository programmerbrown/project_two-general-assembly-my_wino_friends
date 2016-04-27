Rails.application.routes.draw do
  root to: 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'

  devise_for :users

  resources :users do
    resources :wines
  end
end
