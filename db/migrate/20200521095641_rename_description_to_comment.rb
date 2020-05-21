class RenameDescriptionToComment < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :description, :comment
  end
end
