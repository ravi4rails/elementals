json.extract! employee, :id, :first_name, :middle_name, :last_name, :employee_code, :work_email, :profile_image, :contact_number, :created_at, :updated_at
json.url employee_url(employee, format: :json)
