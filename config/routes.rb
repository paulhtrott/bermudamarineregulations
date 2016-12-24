Rails.application.routes.draw do
  resources :fish, only: [:index, :show]
end
