class LinkBuilder
  include Rails.application.routes.url_helpers

  def initialize(guest)
    @guest = guest
  end

  def magic_link
    if Rails.env.production?
      invitation_url(@guest.invitation.secret_id, host: "partymagic.herokuapp.com")
    else
      invitation_url(@guest.invitation.secret_id, host: "localhost", port: 3000)
    end
  end
end
