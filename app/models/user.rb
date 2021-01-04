class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :trackable

  has_one :employee

  # Checking user's role if its an admin user
  def admin?
    self.role == 'admin'
  end

  # Checking user's role if its an employee user
  def employee?
    self.role == 'employee'
  end
end
