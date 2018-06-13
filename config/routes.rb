Rails.application.routes.draw do
  resources :screenings
  resources :screening_types
  resources :interviewers
  resources :requisitions
  resources :recruiters
  resources :candidates
  resources :decisions

  root to: "candidates#index"
end
