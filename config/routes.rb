PovertyIndicators::Application.routes.draw do
  resources :poverty_indicators, only: :index

  root to: 'poverty_indicators#index'
end
