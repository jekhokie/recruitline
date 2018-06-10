Rails.application.routes.draw do
  resources :screening_types
  resources :interviewers
  resources :requisitions
  resources :recruiters
  resources :candidates

  root to: "candidates#index"
end
