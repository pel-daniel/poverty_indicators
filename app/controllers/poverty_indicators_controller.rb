class PovertyIndicatorsController < ApplicationController
  def index
  end

  def indicator_by_state
    @indicator = IndicatorByState.new params[:indicator_by_state] || {}
  end

  def correlations
    @correlations = Correlation.all.order('(value IS NULL), ABS(value) desc').to_a
  end

  def comparisons
    @comparison = IndicatorComparison.new params[:indicator_comparison] || {}
  end
end
