class Member < ApplicationRecord
	validates :name, presence: true
	validates :phone, presence: true
	validates :address, presence: true
	has_one :chit
	belongs_to :franchise
end
