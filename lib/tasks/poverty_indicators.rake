namespace :csv_import do

  desc 'Data import'

  task poverty_indicators: :environment do

    require 'csv'

    csv_file_path = './lib/tasks/Indicadores_municipales_sabana_DA.csv'

    messages = ['', 'Muy alto', 'Alto', 'Medio', 'Bajo', 'Muy bajo']

    CSV.foreach csv_file_path, headers: true do |row|

      row['gdo_rezsoc00'] = messages.index row['gdo_rezsoc00']
      row['gdo_rezsoc05'] = messages.index row['gdo_rezsoc05']
      row['gdo_rezsoc10'] = messages.index row['gdo_rezsoc10']

      PovertyIndicator.create! row.to_hash
    end

  end

  task correlations: :environment do
    %w(pobreza pobreza_m pobreza_e).each do |indicator|
      correlations = Correlations.new PovertyIndicator.indicators_for_correlations, indicator

      correlations.each do |correlation|
        Correlation.create indicator: correlation.first, value: correlation.last, comparison_indicator: indicator
      end
    end
  end
end
