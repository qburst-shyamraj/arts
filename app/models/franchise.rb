class Franchise < ApplicationRecord
	validates :title, presence: true
	validates :person, presence: true
	validates :amount, presence: true
	validates :chit_type_id, presence: true
	has_many :chits, dependent: :destroy
	has_many :members, dependent: :destroy
end
