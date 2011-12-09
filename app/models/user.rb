class User < ActiveRecord::Base
	validates :name,presence: true, uniqueness: true
	has_secure_password
	
	after_destroy :ensure_an_admin_remains
	
	def ensure_an_admin_remains
	  if User.count.zero?
	     raise "Cant delete last user"
	  end
	end
end
