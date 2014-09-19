class AddAttachmentLessonToEpisodes < ActiveRecord::Migration
  def self.up
    change_table :episodes do |t|
      t.attachment :lesson
    end
  end

  def self.down
    remove_attachment :episodes, :lesson
  end
end
