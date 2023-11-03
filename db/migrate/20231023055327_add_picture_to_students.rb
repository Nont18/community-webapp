class AddPictureToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :picture, :string
  end
end
