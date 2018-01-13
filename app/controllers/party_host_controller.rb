class PartyHostController < ApplicationController
  def index
    @guest = Guest.new
  end
end
