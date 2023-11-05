class Link < ApplicationRecord
    validates_presence_of :name, :url
    validates :ruch_emergency, inclusion: { in: ['YES','yes','Yes','No','no', 'Notify'], message: "must be 'YES' or 'NO'" }
    has_many :students
    has_many :users
    # has_many :active_storage_attachments
    has_one_attached :picture

end
