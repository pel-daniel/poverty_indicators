class IndicatorByState
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :formula, :indicator

  def initialize attributes = {}
    attributes.each do |name, value|
      send "#{name}=", value
    end
  end

  def values
    @hash ||= records.each_with_object({}) { |r, memo| memo[r.nom_ent.to_sym] = r.send(@indicator) }
  end

  def empty?
    !@indicator && !@formula
  end


  private

  def records
    PovertyIndicator.
      select([PovertyIndicator.arel_table[@indicator].send(@formula).as(@indicator), :nom_ent]).
      group(:nom_ent)
  end
end
