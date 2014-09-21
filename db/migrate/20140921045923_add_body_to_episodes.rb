class AddBodyToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :body, :text
  end
end
