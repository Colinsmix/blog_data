class BlogEntry < ActiveRecord::Base
  validates_presence_of :author_id
  validates_presence_of :category_id
  validates_presence_of :title
  validates_presence_of :content


  belongs_to :category
  belongs_to :author
end
