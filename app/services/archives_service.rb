class ArchivesService < ApplicationService

    def call
        get_archives_by_month
    end

    private 

    def get_archives_by_month
        Article
        .select("COUNT(*) AS total, strftime('%m',created_at) AS month, strftime('%Y',created_at) AS year")
        .group("strftime('%m',created_at),status")
        .having("status LIKE ? AND strftime('%Y',created_at) = strftime('%Y',datetime('now'))","public")
    end
end