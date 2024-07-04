Rails.application.routes.draw do
  # resources :movies, only: %w[index show]
  resources :lists, only: %w[index show new create]
end
