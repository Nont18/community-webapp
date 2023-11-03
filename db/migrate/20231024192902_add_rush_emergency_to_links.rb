class AddRushEmergencyToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :ruch_emergency, :string
  end
end
