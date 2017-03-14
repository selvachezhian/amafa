class CreateNsmAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :nsm_assets do |t|
      t.references :nsm_asset, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
