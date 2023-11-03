class CreatePhoneLists < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_lists do |t|
      t.string :name
      t.string :phone_number
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
