class Article < ApplicationRecord
    #Email Validation
    #validates :title, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }

    validates :title, presence: true, length: { minimum:3, maximum: 50}
    validates :description, presence: true, length: { minimum:10, maximu: 300}
end