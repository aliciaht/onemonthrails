class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :image, presence: true

	validates :campaign_link, presence: true
	validates_format_of :campaign_link, :with => URI::regexp(%w(http https))
end
