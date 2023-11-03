class Student < ApplicationRecord
  belongs_to :link
  has_one_attached :picture
  # belongs_to :attachment, class_name: 'ActiveStorage::Attachment'
end
