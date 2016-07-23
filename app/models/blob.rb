class Blob < ApplicationRecord
	validates :name, presence:true, uniqueness:true
	has_many :users
	has_many :meetings
end
