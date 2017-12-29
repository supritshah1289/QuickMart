class Category < ApplicationRecord
  has_many :items
  validates :title, :uniqueness => { :case_sensitive => false }

end
