class PovertyIndicator < ActiveRecord::Base

  def self.indicators
    PovertyIndicator.column_names - %w(id ent nom_ent nom_mun)
  end
end
