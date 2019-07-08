module ApplicationHelper

	def user_icon
		@user = User.find(current_user.id)
	end
end
