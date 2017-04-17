class AddingColumnForEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :citrix_id, :string
    add_column :employees, :project, :string
    add_column :employees, :manager, :string
    add_column :employees, :citrix_access, :boolean
    add_column :employees, :admin_access, :boolean
    add_column :employees, :department, :integer, default: 1
    add_column :employees, :document_signed, :boolean
    add_column :employees, :beachhead_computrace, :boolean
    add_column :nsm_assets, :nsm_tag, :string
    add_column :nsm_assets, :computer_name, :string
    add_column :nsm_assets, :service_tag, :string
    add_column :nsm_assets, :mac_id, :string
    add_column :nsm_assets, :memory, :integer, default: 1
    add_column :nsm_assets, :antivirus_check, :boolean
    add_column :nsm_assets, :operating_system, :integer, default: 1
    add_column :nsm_asset_types, :charger, :boolean
    add_column :nsm_asset_types, :laptop_bag, :boolean
  end
end
