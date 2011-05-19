class AddMessageColumnToApplicants < ActiveRecord::Migration
  def self.up
    add_column :applicants, :message_for_employer, :text
  end

  def self.down
    remove_column :applicants, :message_for_employer
  end
end
