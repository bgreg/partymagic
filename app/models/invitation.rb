require "securerandom"

class Invitation < ApplicationRecord
  belongs_to :guest

  def self.create_for(guest)
    invitation = new(guest: guest)
    invitation.secret_id = SecureRandom.uuid
    invitation.save!
    # send email
  end
end
