Rails.application.routes.draw do
  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'

  post 'hello', to: 'hello#index'
  post 'hello/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end