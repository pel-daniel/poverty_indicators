class PovertyIndicatorsController < ApplicationController
  def index
  end

  def indicator_by_state
    @indicator = IndicatorByState.new params[:indicator_by_state] || {}
  end

  def correlations
    @correlations = Correlations.new PovertyIndicator.indicators_for_correlations, 'pobreza'
  end
end
