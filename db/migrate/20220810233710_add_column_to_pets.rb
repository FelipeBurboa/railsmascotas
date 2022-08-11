class AddColumnToPets < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :pet_history, foreign_key: true
  end
end
