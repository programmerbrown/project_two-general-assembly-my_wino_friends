Rails.application.routes.draw do
  root 'users#new'
  resources :users do
    resources :wines
  end
end
