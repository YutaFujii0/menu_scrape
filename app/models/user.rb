class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, format: { with: /\A.+@.+\..+\z/, message: "is invalid" }

  # TODO: Add some callbacks
  before_validation :strip_whitespaces_from_email_input
  after_validation :welcome_email

  private

  def strip_whitespaces_from_email_input
    email&.strip!
  end

  def welcome_email
    # FakeMailer.instance.mail(email, username)
  end
end
