Rails.application.routes.draw do
  resources :users do
    resources :wines
  end
end
