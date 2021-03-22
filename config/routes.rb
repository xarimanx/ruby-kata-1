Rails.application.routes.draw do
  resource :home, only: :show
  resource :books_importer, only: :create
  resource :magazines_importer, only: :create

  resource :books_exporter, only: :show
  resource :magazines_exporter, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#show'
end
