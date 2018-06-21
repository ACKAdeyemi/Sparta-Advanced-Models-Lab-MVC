class Author < ApplicationRecord
  belongs_to :country
  has_many :books

  def full_name
    "#{first_name} #{last_name}"
  end
end
