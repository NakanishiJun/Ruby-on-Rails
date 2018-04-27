Rails.application.routes.draw do
  resource :profile, only: %i(show edit update)

  get "/books/:id" => "books#show"
  resource :publishers do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :books

    member do
      get 'detail'
    end

    collection do
      get 'search'
    end
  end
end
