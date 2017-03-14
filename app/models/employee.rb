class Employee < ApplicationRecord
  validates :first_name, :last_name, :joining_date, presence: true
  validates :email, :user_name, :emp_id, presence: :true, uniqueness: true
end
