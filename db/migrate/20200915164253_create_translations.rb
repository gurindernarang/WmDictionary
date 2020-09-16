class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.string :key
      t.string :string_key
      t.string :translated_term

      t.timestamps
    end
  end
end
