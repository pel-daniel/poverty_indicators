class IndicatorByState
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :formula, :indicator

  def initialize attributes = {}
    attributes.each do |name, value|
      send "#{name}=", value
    end
  end

  def records
    @records ||= PovertyIndicator.
      select([PovertyIndicator.arel_table[@indicator].send(@formula).as(@indicator), :nom_ent]).
      group(:nom_ent)
  end

  def empty?
    !@indicator && !@formula
  end
end
