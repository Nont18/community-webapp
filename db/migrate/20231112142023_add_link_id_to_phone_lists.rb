class AddLinkIdToPhoneLists < ActiveRecord::Migration[7.0]
  def change
    add_column :phone_lists, :link_id, :integer
  end
end
