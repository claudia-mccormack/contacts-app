class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :group_contacts
  has_many :groups, through: :group_contacts

  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true


  def friendly_update
    updated_at.strftime("%m-%e-%y %H:%M")
  end

  def full_name
    "#{first} #{middle} #{last}"
  end

  def family_name
    "#{last} #{first} #{middle}"
  end
end
