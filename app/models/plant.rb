class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, presence: true
  validates :image_url, presence: true
  has_many :plant_tags, dependent: :destroy
  has_many :tags, through: :plant_tags
end
