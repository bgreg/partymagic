class AddEmailToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :email, :string
  end
end
