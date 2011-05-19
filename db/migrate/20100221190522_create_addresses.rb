class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.string :country, :default => "Canada"
      t.string :state, :default => "Ontario"
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :phone2
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
