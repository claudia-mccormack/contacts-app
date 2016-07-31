class Contact < ActiveRecord::Base

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
