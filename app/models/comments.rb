class Comments < ActiveRecord::Base
  validates_presence_of :blog_entry_id
  validates_presence_of :comment
  validates_presence_of :written_by
end
