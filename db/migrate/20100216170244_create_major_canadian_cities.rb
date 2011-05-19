class CreateMajorCanadianCities < ActiveRecord::Migration
  def self.up
    create_table :major_canadian_cities do |t|
      t.string :city
      t.string :province
    end
  end

  def self.down
    drop_table :major_canadian_cities
  end
end
