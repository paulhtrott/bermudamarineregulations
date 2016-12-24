Rails.application.routes.draw do
  root "fish#index"
  resources :fish, only: [:index, :show]
end
