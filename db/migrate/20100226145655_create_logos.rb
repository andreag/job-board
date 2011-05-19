class CreateLogos < ActiveRecord::Migration
  def self.up
    create_table :logos do |t|
      t.integer :employer_id
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size, :integer
      t.datetime :logo_updated_at, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :logos
  end
end
