class CreateTranslationRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :translation_requests do |t|
      t.references :requestor_id, null: false, foreign_key: true
      t.string :status
      t.references :approver_id, null: false, foreign_key: true
      t.references :translator_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
