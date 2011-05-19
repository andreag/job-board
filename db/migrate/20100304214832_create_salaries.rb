class CreateSalaries < ActiveRecord::Migration
  def self.up
    create_table :salaries do |t|
      t.integer :salary
      t.string :display_value
    end
  end

  def self.down
    drop_table :salaries
  end
end
