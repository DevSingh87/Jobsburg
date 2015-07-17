class Job < ActiveRecord::Base
  belongs_to :category
  belongs_to :industry
  has_and_belongs_to_many :locations
  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags=(names)
  	self.tags = names.split(",").map do |t|
  		Tag.where(name: t.strip).first_or_create!
  	end
  end

  def all_tags
  	tags.map(&:name).join(", ")
  end
end
