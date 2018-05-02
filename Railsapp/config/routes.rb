Rails.application.routes.draw do
  get 'hello/index'
  get 'hello', to: 'hello#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
