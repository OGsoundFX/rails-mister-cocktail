class RenameTypeToKind < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :type, :kind
  end
end
