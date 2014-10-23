class CreateAggregatorCountries < ActiveRecord::Migration
  def change
    create_table :aggregator_countries do |t|
      t.references :aggregator, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
