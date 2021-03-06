class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :going, default: false
      t.belongs_to :party

      t.timestamps
    end
  end
end
