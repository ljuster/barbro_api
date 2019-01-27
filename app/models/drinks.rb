class Drinks < ApplicationRecord

  validates :title, presence: true, uniqueness: true
end
