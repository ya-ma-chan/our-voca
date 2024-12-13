class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :common_lang
      t.string :lang1_translation
      t.string :lang2_translation
      t.string :lang1_pron_text
      t.string :lang2_pron_text
      t.boolean :status, default: false
      t.boolean :favorite, default: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
