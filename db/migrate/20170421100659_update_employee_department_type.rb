class UpdateEmployeeDepartmentType < ActiveRecord::Migration[5.0]
  def up
    remove_column :employees, :department
    add_column :employees, :department_id, :string
  end

  def down
    remove_column :employees, :department_id
    add_column :employees, :department, :integer, default: 1
  end
end
