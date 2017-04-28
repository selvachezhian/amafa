class EmployeeAsset < ApplicationRecord
  belongs_to :employee
  belongs_to :nsm_asset

  scope :by_asset, ->(asset) { where(nsm_asset_id: asset) }

  def delete_and_unassign
    nsm_asset.update_attribute(:assigned, false)
    self.delete
  end
end
