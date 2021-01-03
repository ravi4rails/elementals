class Employee < ApplicationRecord
  belongs_to :user, optional: true

  validates :first_name, :last_name, presence: true
  validates :work_email, presence: true, uniqueness: true

  before_create :create_employee_user

  # Creating a user for employee before creating a employee
  # using employee's work email address and default password
  def create_employee_user
    email = self.work_email
    user = User.new(email: self.work_email, password: 'appsimpact@#123')
    user.save
    self.user_id = user.id
  end
end
