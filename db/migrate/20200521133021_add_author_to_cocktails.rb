class AddAuthorToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :author, :string
  end
end
