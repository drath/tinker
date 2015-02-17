class ChangeReviewFormatInBooksTable < ActiveRecord::Migration
  def change
  	change_column :books, :review, :text
  end
end
