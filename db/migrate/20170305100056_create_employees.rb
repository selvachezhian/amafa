class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :user_name
      t.date :joining_date
      t.date :relieving_date
      t.string :emp_id

      t.timestamps
    end
  end
end
