class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, :catch_copy, :consept, :image, presence: true
end
