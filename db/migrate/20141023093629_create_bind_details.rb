class CreateBindDetails < ActiveRecord::Migration
  def change
    create_table :bind_details do |t|
      t.string :host_ip
      t.integer :port
      t.string :smpp_version
      t.string :username
      t.string :password
      t.references :aggregator, index: true

      t.timestamps
    end
  end
end
