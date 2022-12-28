class Publication < ApplicationRecord
    # Associations
    has_many :publication_types, dependent: :destroy
    has_many :types, through: :publication_types

  # Validations
  validates :name, :description, presence: true
end
