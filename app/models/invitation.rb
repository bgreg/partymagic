require "securerandom"

class Invitation < ApplicationRecord
  belongs_to :guest

  def self.create_for(guest)
    invitation = new(guest: guest)
    invitation.secret_id = SecureRandom.uuid
    invitation.save!
		InvitationMailer.new_invitation(guest).deliver_now
  end

  def self.resend_to_all_no_responses
    Party.first.guests.where(going: false).each do |guest|
      InvitationMailer.new_invitation(guest).deliver_now
    end
  end
end
