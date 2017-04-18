class CreateEmployeeAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_assets do |t|
      t.integer :employee_id, index: true
      t.integer :nsm_asset_id, index: true

      t.timestamps
    end
  end
end
