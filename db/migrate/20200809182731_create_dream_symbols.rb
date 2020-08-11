class CreateDreamSymbols < ActiveRecord::Migration[6.0]
  def change
    create_table :dream_symbols do |t|
      t.string :name
      t.text :meaning
      t.references :dictionary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
