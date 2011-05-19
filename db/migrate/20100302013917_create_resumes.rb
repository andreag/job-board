class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|
      t.integer :seeker_id
      t.boolean :primary
      t.string :name
      t.string :resume_file_name
      t.string :resume_content_type
      t.integer :resume_file_size, :integer
      t.datetime :resume_updated_at, :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :resumes
  end
end
