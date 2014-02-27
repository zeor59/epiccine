class AddAttachmentPictureToCharacters < ActiveRecord::Migration
  def self.up
    change_table :characters do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :characters, :picture
  end
end
