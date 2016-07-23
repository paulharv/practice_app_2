class User < ApplicationRecord
	validates :name, presence:true, length:{minimum:3, maximum:10}
	validates :age, :inclusion => 18..100
	validates :email, presence:true, :uniqueness => true

	belongs_to :blob
end
