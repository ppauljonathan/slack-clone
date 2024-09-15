# frozen_string_literal: true
# Admin class
class Admin < ApplicationRecord
  has_secure_password

  # VALIDATIONS
  validates :email, uniqueness: true
  validates :email, format: { with: ::URI::MailTo::EMAIL_REGEXP }
end
