class CreateSymbols < ActiveRecord::Migration[6.0]
  def change
    create_table :symbols do |t|
      t.string :name
      t.string :meaning
      t.references :dictionary, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
