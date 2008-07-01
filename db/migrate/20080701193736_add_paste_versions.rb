class AddPasteVersions < ActiveRecord::Migration
  def self.up
    Paste.create_versioned_table
  end

  def self.down
    Paste.drop_versioned_table
  end
end
