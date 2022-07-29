class FeaturedArticleService < ApplicationService
    def call
        most_featured_article
    end

    private 

    def most_featured_article
        Article.order(created_at: :desc).first
    end

end