class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :message
      t.string :delivery_status
      t.string :messageid
      t.references :phonebook, index: true
      t.float :cost
      t.datetime :send_time
      t.datetime :delivery_time
      t.float :latency

      t.timestamps
    end
  end
end
