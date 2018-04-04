class Restaurant < ApplicationRecord
  has_many :reviews #rails doesn't know if you want has_many :review or has_one :review so it doesn't auto generate

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true


end
