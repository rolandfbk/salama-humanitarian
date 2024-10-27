class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  # Role constants
  ROLES = %w[admin volunteer].freeze

  # Validations
  validates :role, inclusion: { in: ROLES }

  after_initialize :set_default_role, if: :new_record?

  def admin?
    role == 'admin'
  end

  def volunteer?
    role == 'volunteer'
  end

  private

  def set_default_role
    self.role ||= 'volunteer'
  end
end
