class AddAttachmentStillToEpisodes < ActiveRecord::Migration
  def self.up
    change_table :episodes do |t|
      t.attachment :still
    end
  end

  def self.down
    remove_attachment :episodes, :still
  end
end
