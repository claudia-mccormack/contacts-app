class Favorite < ActiveRecord::Base
  belongs_to :users
  belongs_to :book
end
