class Contact < ApplicationRecord
    validates :name, presence: true
    validates :primary_email, :secondary_email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
    has_one_attached :photo
end
