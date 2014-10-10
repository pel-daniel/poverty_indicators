PovertyIndicators::Application.routes.draw do
  resources :poverty_indicators, only: :index do
    collection do
      get :indicator_by_state
      get :correlations
    end
  end

  root to: 'poverty_indicators#index'
end
