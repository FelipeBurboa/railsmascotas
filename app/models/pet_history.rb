class PetHistory < ApplicationRecord
belongs_to :pets
belongs_to :pets

validates :name, presence: true
validates :pet_id, presence: true, uniqueness: {scope: :name}
end
