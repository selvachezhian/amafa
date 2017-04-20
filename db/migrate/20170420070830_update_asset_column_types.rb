class UpdateAssetColumnTypes < ActiveRecord::Migration[5.0]
  def up
    remove_column :nsm_assets, :memory
    remove_column :nsm_assets, :operating_system
    add_column :nsm_assets, :memory, :string
    add_column :nsm_assets, :operating_system, :string
  end

  def down
    remove_column :nsm_assets, :memory
    remove_column :nsm_assets, :operating_system
    add_column :nsm_assets, :memory, :integer, default: 1
    add_column :nsm_assets, :operating_system, :integer, default: 1
  end
end
