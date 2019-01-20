class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 20, minimum: 5 }, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
