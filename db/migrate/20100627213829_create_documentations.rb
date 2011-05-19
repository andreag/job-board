class CreateDocumentations < ActiveRecord::Migration
  def self.up
    create_table :documentations do |t|
      t.integer :resume_id
      t.integer :applicant_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :documentations
  end
end
