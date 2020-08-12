class AddColumnToEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :description, :text
  end
end
