class Employee < ApplicationRecord
  has_many :employee_assets
  has_many :nsm_assets, through: :employee_assets, as: :associated_assets
  belongs_to :department

  validates :first_name, :last_name, :joining_date, presence: true
  validates :email, :user_name, :emp_id, presence: :true, uniqueness: true
end
