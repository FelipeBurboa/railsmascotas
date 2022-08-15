class Client < ApplicationRecord
    has_many :pets, dependent: :delete_all

    def pet_count
        #TODO-implement
        if self.pets.present?
          f =[]
          d = self.pets.map do |c|
              c.id
          end 
          d.each do |pet|
              f << pet
          end
          f.count
      else
          "Sin mascotas"             
      end
      #f.max
      end
end
