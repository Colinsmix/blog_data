class Author < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_length_of :first_name, {minimum: 2}
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, with: VALID_EMAIL_REGEX, message: "That email stinks"
  validates_uniqueness_of :email

  has_many :blog_entries
end
