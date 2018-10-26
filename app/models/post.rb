class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Copy-paste your code from previous exercise
  validates :user, presence: true
  validates :name, presence: true
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: { case_sensitive: false }
  validates :url, presence: true
  validates :url, format: { with: /\Ahttps?:\/\/.+\..+\z/, message: "is invalid" }

  scope :voted, -> { order(votes: :desc) }
end
