Rails.application.routes.draw do
  resources :water_logs, only: [:index]
end
