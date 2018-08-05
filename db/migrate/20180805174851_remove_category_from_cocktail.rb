class RemoveCategoryFromCocktail < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :category, :string
  end
end
