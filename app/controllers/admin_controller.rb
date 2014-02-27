#encoding: utf-8

class AdminController < ApplicationController
	before_filter :authenticate_user!, :is_admin
	layout 'admin'

	def is_admin
		if !current_user.admin 
			redirect_to root_path, alert: 'Permission Denied'
		end 
	end

end