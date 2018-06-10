Rails.application.routes.draw do
  resources :interviewers
  resources :requisitions
  resources :recruiters
  resources :candidates

  root to: "candidates#index"
end
