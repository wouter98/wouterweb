Rails.application.routes.draw do
  root "wouters#index"

  resources :wouters
end
