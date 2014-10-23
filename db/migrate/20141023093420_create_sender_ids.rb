class CreateSenderIds < ActiveRecord::Migration
  def change
    create_table :sender_ids do |t|
      t.references :aggregator, index: true
      t.string :sender_id

      t.timestamps
    end
  end
end
