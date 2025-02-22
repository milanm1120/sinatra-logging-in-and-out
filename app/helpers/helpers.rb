class Helpers
    attr_reader :user_id

	def self.current_user(session)
		User.find_by(id: session[:user_id])		
	end

	def self.is_logged_in?(session)
		session.has_key?(:user_id) ? true : false
	end
end