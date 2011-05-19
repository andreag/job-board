class CreateEmployers < ActiveRecord::Migration
  def self.up
    create_table :employers do |t|
      t.integer :user_id
      t.string :company_name
      t.string :website_url
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :employers
  end
end
