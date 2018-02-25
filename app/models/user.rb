class User < ApplicationRecord
  before_create :create_remember_token
  before_save :downcase_email

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  has_secure_password

  def self.create_new_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(string)
    Digest::SHA1.hexdigest(string.to_s)
  end

  private
  def create_remember_token
    self.remember_token = User.digest(User.create_new_token)
  end

  private
  def downcase_email
    self.email = email.downcase
  end




end
