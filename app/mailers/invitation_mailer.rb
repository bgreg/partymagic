class InvitationMailer < ApplicationMailer

  def new_invitation(guest)
    @guest = guest
    @url = LinkBuilder.new(@guest).magic_link
    mail(to: @guest.email, subject: "Invitation for #{@guest.name}")
  end
end
