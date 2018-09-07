class RenameArticleCategoryToPostCategory < ActiveRecord::Migration[5.2]
  def change
    rename_table :article_categories, :post_categories
  end
end
