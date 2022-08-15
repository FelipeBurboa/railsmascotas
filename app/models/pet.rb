class Pet < ApplicationRecord
has_many :pet_histories, dependent: :delete_all
belongs_to :client
validates :name, presence: true

  # def to_s
  #   name
  # end
  def history_count
    #TODO-implement
    if self.pet_histories.present?
      f =[]
      d = self.pet_histories.map do |c|
          c.id
      end 
      d.each do |visitas|
          f << visitas
      end
      f.count
  else
      "Sin visitas"             
  end
  #f.max
  end

  def avg_weight
    #TODO-implement
      if self.pet_histories.present?
        f =[]
        d = self.pet_histories.map do |c|
            c.weight
        end 
        d.each do |peso|
            f << peso
        end
        (f.sum)/f.count
    else
        "Sin visitas"             
    end
  #f.max
  end

  def avg_heigth
    #TODO-implement
    if self.pet_histories.present?
      f =[]
      d = self.pet_histories.map do |c|
          c.heigth
      end 
      d.each do |altura|
          f << altura
      end
      (f.sum.to_f)/f.count.to_f
  else
      "Sin visitas"             
  end
  end

  def max_weight
    #TODO-implement
    if self.pet_histories.present?
      f =[]
      d = self.pet_histories.map do |c|
          c.weight
      end 
      d.each do |peso|
          f << peso
      end
      f.max
  else
      "Sin visitas"             
  end
#f.max
  end

  def max_height
    #TODO-implement
    if self.pet_histories.present?
      f =[]
      d = self.pet_histories.map do |c|
          c.heigth
      end 
      d.each do |altura|
          f << altura
      end
      f.max
    else
        "Sin visitas"             
    end
  end
end
