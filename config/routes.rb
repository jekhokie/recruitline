Rails.application.routes.draw do
  resources :requisitions
  resources :recruiters
  resources :candidates

  root to: "candidates#index"
end
