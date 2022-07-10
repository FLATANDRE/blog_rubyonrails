class CategoriesController < ApplicationController
    def self.get_all_categories
        Category.all
    end
end