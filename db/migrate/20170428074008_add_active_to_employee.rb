class AddActiveToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :active, :boolean
  end
end
