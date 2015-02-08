class Episode < ActiveRecord::Base
	has_attached_file :still, :styles => { :medium => "600x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :lesson
  validates_attachment_content_type :still, :content_type => /\Aimage\/.*\Z/

  validates_attachment_content_type :lesson, :content_type => [ 'text/x-markdown']

  has_many :photos
  accepts_nested_attributes_for :photos
end
