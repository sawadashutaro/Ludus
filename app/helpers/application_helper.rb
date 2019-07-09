module ApplicationHelper

	def user_icon
		@user = User.find(current_user.id)
	end

	def simple_time(time)
		time.strftime("%Y-%m-%d %H:%M")
	end
end
