class PovertyIndicatorsController < ApplicationController
  def index
  end

  def indicator_by_state
    @indicator = IndicatorByState.new params[:indicator_by_state] || {}
  end

  def correlations
    @correlations = Correlation.all.order('ABS(value) desc').to_a
  end
end
