class User < ApplicationRecord
  has_many :tanks
  has_many :records
  before_save {self.email = email.downcase}
  validates :username, presence: true, length: {minimum: 2, maximum: 50}, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {minimum: 2, maximum: 50}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  has_secure_password
end

