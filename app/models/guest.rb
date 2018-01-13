class Guest < ApplicationRecord
  belongs_to :party
  has_one :invitation

  def magic_link


  end
end
