class AddusernameToLink < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :user, :string, foreign_key: true
  end
end
