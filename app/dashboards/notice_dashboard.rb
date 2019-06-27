require "administrate/base_dashboard"

class NoticeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    venue: Field::String,
    author: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    attachment_file_name: Field::String,
    attachment_content_type: Field::String,
    attachment_file_size: Field::Number,
    attachment_updated_at: Field::DateTime,
    attachment: Field::Carrierwave #Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :venue,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :venue,
    :author,
    :created_at,
    :updated_at,
    :attachment_file_name,
    :attachment_content_type,
    :attachment_file_size,
    :attachment_updated_at,
    :attachment,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :title,
    :venue,
    :author,
    # :attachment_file_name,
    # :attachment_content_type,
    # :attachment_file_size,
    # :attachment_updated_at,
    :attachment,
  ].freeze

  # Overwrite this method to customize how notices are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(notice)
  #   "Notice ##{notice.id}"
  # end
end
