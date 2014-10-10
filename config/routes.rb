PovertyIndicators::Application.routes.draw do
  resources :poverty_indicators, only: :index do
    get :indicator_by_state, on: :collection
  end

  root to: 'poverty_indicators#index'
end
