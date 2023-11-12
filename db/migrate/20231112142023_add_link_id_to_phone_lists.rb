class AddLinkIdToPhoneLists < ActiveRecord::Migration[7.0]
  def change
    add_column :phone_lists, :linkid, :integer
  end
end
