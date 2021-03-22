class RenameTitl < ActiveRecord::Migration[6.0]
  def change
    rename_column :prototypes, :titl, :title
  end
end
