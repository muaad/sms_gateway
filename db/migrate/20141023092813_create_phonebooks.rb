class CreatePhonebooks < ActiveRecord::Migration
  def change
    create_table :phonebooks do |t|
      t.string :number
      t.string :surname
      t.string :other_names
      t.references :group, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
