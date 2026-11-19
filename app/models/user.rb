class User < ApplicationRecord
  has_secure_password

  enum :role, { student: 0, staff: 1, admin: 2 }, default: :student

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }
end