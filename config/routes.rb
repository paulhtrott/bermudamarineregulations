Rails.application.routes.draw do
  root "regulated/fish#index"

  get "/unregulated" => "unregulated/fish#index"
  namespace :unregulated do
    resources :fish, only: [:index, :show]
  end

  get "/regulated" => "regulated/fish#index"
  namespace :regulated do
    resources :fish, only: [:index, :show]
  end
end
