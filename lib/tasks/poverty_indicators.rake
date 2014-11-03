namespace :csv_import do

  desc 'Import CSV Data.'

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
end
