class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  DEFAULT_ROLES = %w(Employee Supervisor Translator)
  validates :user_name, presence: true, length: {minimum: 4, maximum: 16}
  validates :user_role, presence: true, inclusion: {in: DEFAULT_ROLES}
  has_many :translations
end
