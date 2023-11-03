class AddTypeEmergencyToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :type_emergency, :string
  end
end
