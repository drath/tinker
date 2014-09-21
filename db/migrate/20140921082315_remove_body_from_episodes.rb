class RemoveBodyFromEpisodes < ActiveRecord::Migration
  def change
    remove_column :episodes, :body, :text
  end
end
