Rails.application.routes.draw do
  resources :trade_signals, only: [:index, :show]

  root "trade_signals#index"
end
