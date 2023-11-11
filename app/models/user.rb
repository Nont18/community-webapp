class User < ApplicationRecord
  validates :email, presence: true
  validate :email_contains_ait_asia_domain
  validates :username, presence: true, uniqueness: true
  has_many :links

  def email_contains_ait_asia_domain
    unless email =~ /@ait\.asia\z/
      errors.add(:email, "must contain the domain @ait.asia")
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
