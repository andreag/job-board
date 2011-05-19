class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.integer :employer_id
      t.integer :profession_id
      t.string :title
      t.text   :description
      t.string :state
      t.integer :salary_low
      t.integer :salary_high
      t.text :qualifications
      t.text :apply_instructions
      t.date :deadline
      t.datetime :activated_at
      t.datetime :deactivated_at
      t.timestamps
    end
    add_index :jobs, :title
  end

  def self.down
    drop_table :jobs
    remove_index :jobs, :title
  end
  
    
end
