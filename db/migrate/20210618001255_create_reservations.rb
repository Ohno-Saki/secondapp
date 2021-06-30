class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_day
      t.date :finish_day
      t.integer :number_of_people

      t.timestamps
    end
  end
end
