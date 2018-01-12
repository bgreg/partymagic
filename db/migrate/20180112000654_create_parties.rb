class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :title
      t.text :description
      t.string :location
      t.string :contact_information

      t.timestamps
    end
  end
end
