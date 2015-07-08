class Job < ActiveRecord::Base
  belongs_to :category
  belongs_to :industry
  has_and_belongs_to_many :locations
end
