Rails.application.routes.draw do
  root to: 'static_pages#home'
  # root to: 'users#index'
  match '/about', to: 'static_pages#about', via: 'get'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    resources :wines
  end
end
