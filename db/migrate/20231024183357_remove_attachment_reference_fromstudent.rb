class RemoveAttachmentReferenceFromstudent < ActiveRecord::Migration[7.0]
  def change
    # remove_reference :students, :attachment, foreign_key: { to_table: :active_storage_attachments }
  end
end
