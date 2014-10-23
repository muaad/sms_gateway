class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.float :amount
      t.string :currency
      t.references :aggregator, index: true

      t.timestamps
    end
  end
end
