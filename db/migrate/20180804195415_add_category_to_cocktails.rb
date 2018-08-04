class AddCategoryToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :category, :string
    add_column :cocktails, :how_to_mix, :text
  end
end
