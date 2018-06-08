Rails.application.routes.draw do
  resources :customer_services
  resources :distributors
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
