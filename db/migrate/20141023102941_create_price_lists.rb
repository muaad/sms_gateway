class CreatePriceLists < ActiveRecord::Migration
  def change
    create_table :price_lists do |t|
      t.references :credits, index: true
      t.string :cost_per_sms
      t.references :aggregator, index: true
      t.references :bind_detail, index: true

      t.timestamps
    end
  end
end
