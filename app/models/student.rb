class Student < ApplicationRecord
  belongs_to :link
  has_one_attached :picture
  # belongs_to :attachment, class_name: 'ActiveStorage::Attachment'
  validates_presence_of :name, :studentid # if user enter ' ' It will not allow to comment
end
