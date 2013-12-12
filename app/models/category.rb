class Category < ActiveRecord::Base
  validates_uniqueness_of :type

  has_many :blog_entries
end




# Aladdin
# Dumbo

# every time you enter a category, it should retrieve the category_id if it exists, or create it if it doesnt.