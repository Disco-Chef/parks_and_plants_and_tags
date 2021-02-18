class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
  validates :tag, uniqueness: { scope: :plant, message: 'Rule: No double tagging!' }
end
