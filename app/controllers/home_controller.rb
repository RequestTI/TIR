class HomeController < ApplicationController

	def index
		flash[:notice] = t(:presentation)
	end

end
