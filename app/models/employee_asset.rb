class EmployeeAsset < ApplicationRecord
  belongs_to :employee
  belongs_to :nsm_asset
end
