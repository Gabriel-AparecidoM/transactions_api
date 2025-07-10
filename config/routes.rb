Rails.application.routes.draw do
  resources :transactions, only: [:create]
  get 'stats', to: 'transactions#stats'
  delete 'stats', to: 'transactions#destroy_all'
end
