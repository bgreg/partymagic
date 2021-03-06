require "administrate/base_dashboard"

class GuestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    party: Field::BelongsTo,
    invitation: Field::HasOne,
    id: Field::Number,
    name: Field::String,
    going: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    email: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :party,
    :invitation,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :party,
    :invitation,
    :id,
    :name,
    :going,
    :created_at,
    :updated_at,
    :email,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :party,
    :invitation,
    :name,
    :going,
    :email,
  ].freeze

  # Overwrite this method to customize how guests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(guest)
  #   "Guest ##{guest.id}"
  # end
end
