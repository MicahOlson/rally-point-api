class Organization < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :events, dependent: :destroy
end
