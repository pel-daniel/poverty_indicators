class PovertyIndicatorsController < ApplicationController
  def index
    @graph = MunicipalityGraph.new
  end

  def municipality_graph
    @graph = MunicipalityGraph.new params[:municipality_graph]
  end
end
