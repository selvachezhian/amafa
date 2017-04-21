class Department < ApplicationRecord
  has_many :employee

  validates :name, presence: true, uniqueness: true
end
