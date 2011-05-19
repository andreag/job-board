class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.integer :seeker_id
      t.integer :job_id

      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
