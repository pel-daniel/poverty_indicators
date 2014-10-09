class PovertyIndicator < ActiveRecord::Base

  def self.indicators
    PovertyIndicator.column_names - %w(id ent nom_ent clave_mun nom_mun)
  end
end
