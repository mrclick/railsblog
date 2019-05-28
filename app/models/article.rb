class Article < ApplicationRecord
    belongs_to :user
    #Email Validation
    #validates :title, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }

    validates :title, presence: true, length: { minimum:3, maximum: 50}
    validates :description, presence: true, length: { minimum:10, maximu: 300}
    validates :user_id, presence: true

    def self.search(params)
        articles = Article.where("description LIKE ? or title LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
        articles
    end
end