class AddInvoiceColumnAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :nsm_assets, :invoice_number, :string
  end
end
