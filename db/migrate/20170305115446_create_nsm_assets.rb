class CreateNsmAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :nsm_assets do |t|
      t.string :code
      t.integer :nsm_asset_type_id, index: true

      t.timestamps
    end
  end
end
