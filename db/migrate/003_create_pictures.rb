class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.column :parent_id,  :integer
      t.column :content_type, :string
      t.column :filename, :string    
      t.column :thumbnail, :string 
      t.column :size, :integer
      t.column :width, :integer
      t.column :height, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
