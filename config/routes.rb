Rails.application.routes.draw do
  resource :home, only: :show
  resource :magazines_importer, only: :create
  resource :books_importer, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#show'
end
