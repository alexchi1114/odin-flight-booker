class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :departure_time
      t.integer :duration
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
