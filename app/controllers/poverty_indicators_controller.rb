class PovertyIndicatorsController < ApplicationController
  def index
    @graph = IndicatorByState.new
  end

  def indicator_by_state
    @graph = IndicatorByState.new params[:indicator_by_state]
  end
end
