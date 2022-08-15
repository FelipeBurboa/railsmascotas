class RemoveColumnPetHistoryIdFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :pet_history_id, :integer
  end
end
