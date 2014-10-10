class PovertyIndicator < ActiveRecord::Base

  def self.indicators
    PovertyIndicator.column_names - %w(id ent nom_ent clave_mun nom_mun)
  end

  def self.indicators_for_correlations
    indicators - %w(pobreza pobreza_e pobreza_m)
  end
end
