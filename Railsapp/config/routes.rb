Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/show'
  get 'messages/add'
  get 'messages/edit'
  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'


  get 'people/index'
  get 'people', to: 'people#index'

  get 'people/add'
  post 'people/add', to:'people#create'

  get 'people/edit/:id', to: 'people#edit'
  post 'people/edit/:id', to: 'people#update'
  patch 'people/edit/:id', to: 'people#update'

  get 'people/delete/:id', to: 'people#delete'

  get 'people/find'
  post 'people/find'

  get 'people/:id', to: 'people#show'

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
