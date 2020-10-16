class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
