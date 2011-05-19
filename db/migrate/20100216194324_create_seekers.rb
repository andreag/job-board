class CreateSeekers < ActiveRecord::Migration
  def self.up
    create_table :seekers do |t|
      t.integer :user_id
      t.text :description
      t.text :career_objectives
      t.timestamps
    end
  end

  def self.down
    drop_table :seekers
  end
end
