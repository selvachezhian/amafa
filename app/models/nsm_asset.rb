class NsmAsset < ApplicationRecord
  has_one :employee_asset
  belongs_to :nsm_asset_type

  validates :code, :invoice_number, presence: true, uniqueness: true

  scope :assigned, -> { where(assigned: true) }
  scope :un_assigned, -> { where(assigned: [false, nil]) }
  scope :by_code, ->(code) { where('code LIKE ?', "%#{code}%") }

end
