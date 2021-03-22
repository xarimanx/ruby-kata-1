Rails.application.routes.draw do
  resource :home, only: :show
  resource :magazines_uploader
  resource :books_uploader
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#show'
end
