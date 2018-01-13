class GuestsController < ApplicationController
  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      Invitation.create_for(@guest)
      redirect_to party_host_index_path, notice: 'Guest was added'
    else
      redirect_to party_host_index_path, alert: 'error'
    end
  end

  def update
    guest = Guest.find_by!(id: params[:id])
    guest.going = params[:guest][:going]
    guest.save!
    redirect_to invitation_path(guest.invitation.secret_id), alert: 'error'
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :party_id)
  end
end
