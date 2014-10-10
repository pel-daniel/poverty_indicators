class Correlations
  attr_reader :indicators, :comparison_indicator

  def initialize indicators, comparison_indicator
    @comparison_indicator = comparison_indicator
    @indicators = indicators
  end

  def table
    @indicators.map do |i|
      [i, Statistics.correlation(records.map(&i.to_sym), records.map(&@comparison_indicator.to_sym))] rescue [i, nil]
    end
  end

  def records
    @records ||= PovertyIndicator.all
  end
end
