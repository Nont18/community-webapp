class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :ruch_emergency
      t.string :type_emergency


      t.timestamps
    end
  end
end
