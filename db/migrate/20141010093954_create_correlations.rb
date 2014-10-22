class CreateCorrelations < ActiveRecord::Migration
  def change
    create_table :correlations do |t|
      t.string :indicator
      t.string :comparison_indicator
      t.decimal :value, precision: 5, scale: 4
    end
  end
end
