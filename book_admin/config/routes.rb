Rails.application.routes.draw do
  end
  get '/board', to: '/board#index'
  post '/board', to: '/board#index'
  get '/board/index'
  post '/board/index'
end
