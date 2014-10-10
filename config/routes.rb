PovertyIndicators::Application.routes.draw do
  resources :poverty_indicators, only: :index do
    get :municipality_graph, on: :collection
  end

  root to: 'poverty_indicators#index'
end
