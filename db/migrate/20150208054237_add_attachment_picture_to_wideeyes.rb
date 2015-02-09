class AddAttachmentPictureToWideeyes < ActiveRecord::Migration
  def self.up
    change_table :wideeyes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :wideeyes, :picture
  end
end
