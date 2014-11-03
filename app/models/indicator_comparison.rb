class IndicatorComparison
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :indicator1, :indicator2

  def initialize attributes = {}
    attributes.each do |name, value|
      send "#{name}=", value
    end
  end

  def values
    @values ||= compute_correlations
  end

  def empty?
    !@indicator && !@indicator2
  end

  def correlation
    Statistics.correlation(records.map(&@indicator1.to_sym), records.map(&@indicator2.to_sym))
  end

  private

  def compute_correlations
    records.group_by { |p| p.nom_ent }.each_with_object({}) do |r, memo|
      memo[r.first.to_sym] = Statistics.correlation(r.last.map(&@indicator1.to_sym), r.last.map(&@indicator2.to_sym))
    end
  end

  def records
    @records ||= PovertyIndicator.select([@indicator1, @indicator2, :nom_ent]).to_a
  end
end
