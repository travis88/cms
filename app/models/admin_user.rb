class AdminUser < ActiveRecord::Base
	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	validates :first_name, presence: true, length: {maximum: 64}
	validates :last_name, presence: true, length: {maximum: 64}
	validates :username, presence: true, length: {in: 5..25}, uniqueness: true
	validates :email,presence: true, length: {maximum: 64}, format: {with: EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	has_secure_password
end
