class CreateAggregatorProviders < ActiveRecord::Migration
  def change
    create_table :aggregator_providers do |t|
      t.references :aggregator, index: true
      t.references :provider, index: true

      t.timestamps
    end
  end
end
