class Author < ActiveRecord::Base
  validates_length_of :first_name, {minimum: 2}
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "That email stinks"
  validates_uniqueness_of :email

  has_many :blog_entries
end
