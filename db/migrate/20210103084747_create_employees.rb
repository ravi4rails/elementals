class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :employee_code
      t.string :work_email
      t.string :profile_image
      t.string :contact_number
      t.integer :user_id

      t.timestamps
    end
  end
end
