class CreateEntryThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_themes do |t|
      t.string :name
      t.references :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
