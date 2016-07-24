class User < ApplicationRecord
	validates :name, presence:true, length:{minimum:3, maximum:10}
	validates :age, :inclusion => 18..100
	validates :email, presence:true, :uniqueness => true
	validates :password, presence:true, length:{minimum:6}
	
	belongs_to :blob
	has_many :meetings

	has_secure_password
end
