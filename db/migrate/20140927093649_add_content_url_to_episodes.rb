class AddContentUrlToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :content_url, :string
  end
end
