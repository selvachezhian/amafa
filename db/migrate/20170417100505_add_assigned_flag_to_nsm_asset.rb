class AddAssignedFlagToNsmAsset < ActiveRecord::Migration[5.0]
  def change
    add_column :nsm_assets, :assigned, :boolean, index: true
  end
end
