class NsmAssetType < ApplicationRecord
  has_many :nsm_assets

  def purchased
    nsm_assets
  end

  def purchased_count
    purchased.count
  end

  def assigned
    nsm_assets.assigned
  end

  def assigned_count
    assigned.count
  end

  def available
    nsm_assets.un_assigned
  end

  def available_count
    available.count
  end
end
