class Category < ActiveRecord::Base
  validates_uniqueness_of :type

  has_many :blog_entries
end
