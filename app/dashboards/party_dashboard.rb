require "administrate/base_dashboard"

class PartyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    guests: Field::HasMany,
    id: Field::Number,
    start_time: Field::DateTime,
    end_time: Field::DateTime,
    title: Field::String,
    description: Field::Text,
    location: Field::String,
    contact_information: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :guests,
    :id,
    :start_time,
    :end_time,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :guests,
    :id,
    :start_time,
    :end_time,
    :title,
    :description,
    :location,
    :contact_information,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :guests,
    :start_time,
    :end_time,
    :title,
    :description,
    :location,
    :contact_information,
  ].freeze

  # Overwrite this method to customize how parties are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(party)
  #   "Party ##{party.id}"
  # end
end
