class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.string :secret_id
      t.belongs_to :guest

      t.timestamps
    end
  end
end
