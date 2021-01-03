class Employee < ApplicationRecord
  belongs_to :user, optional: true

  validates :first_name, :last_name, presence: true
  validates :work_email, presence: true, uniqueness: true

  before_create :create_employee_user

  # Creating a user for employee before creating a employee
  # using employee's work email address
  def create_employee_user
    email = self.work_email
    user = User.new(email: self.work_email)
    # Skipping validation here because here we are creating user without password.
    # We send an email to employee's work email address to set their own password
    user.save(validate: false)
    self.user_id = user.id
  end
end
