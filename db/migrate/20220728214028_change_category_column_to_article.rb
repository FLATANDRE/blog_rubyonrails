class ChangeCategoryColumnToArticle < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:articles, :category_id, false, 1)
  end
end
