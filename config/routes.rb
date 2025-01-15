Rails.application.routes.draw do
  get 'test', to: proc { [200, {}, ['Test page works!']] }
  resources :water_logs, only: [:index]
end
