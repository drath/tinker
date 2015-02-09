class CreateWideeyes < ActiveRecord::Migration
  def change
    create_table :wideeyes do |t|
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
