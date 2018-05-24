Rails.application.routes.draw do
  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#show'
  get 'people/add'
  post 'people/add', to:'people#create'

  get 'board/index'
  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'

  post 'hello', to: 'hello#index'
  post 'hello/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'board', to: 'board#index'
  post 'board', to: 'board#index'
  get 'board/index'
  post 'board/index'
end
