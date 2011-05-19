class CreateProvinces < ActiveRecord::Migration
  def self.up
    create_table :provinces do |t|
      t.string :province
      t.string :iso
    end
  end

  def self.down
    drop_table :provinces
  end
end
