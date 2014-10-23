class CreateAggregators < ActiveRecord::Migration
  def change
    create_table :aggregators do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
