class User
	def initialize(username,realname)
		@username = username
		@realname = realname
	end
	def username
		return @username
	end
	def realname
		return @realname
	end
end

myprofile = User.new("jnikhil", "Jacob")
puts myprofile.username
puts myprofile.realname