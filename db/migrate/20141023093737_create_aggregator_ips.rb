class CreateAggregatorIps < ActiveRecord::Migration
  def change
    create_table :aggregator_ips do |t|
      t.string :ip_address
      t.references :aggregator, index: true
      t.boolean :whitlisted

      t.timestamps
    end
  end
end
