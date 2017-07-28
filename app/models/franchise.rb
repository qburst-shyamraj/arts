class Franchise < ApplicationRecord
	validates :title, presence: true
	validates :person, presence: true
	validates :amount, presence: true
	has_many :chits
	has_many :members
end
