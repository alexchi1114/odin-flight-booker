class AddEmailToPassengers < ActiveRecord::Migration[5.0]
  def change
    add_column :passengers, :email, :string
  end
end
