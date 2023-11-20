class AddTypeEmergencyToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :typeemergency, :string
  end
end
