class CreateNetworkContacts < ActiveRecord::Migration
  def change
    create_table :network_contacts do |t|
      t.references :phonebook, index: true
      t.string :email
      t.string :location
      t.references :network, index: true

      t.timestamps
    end
  end
end
