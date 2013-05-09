class LinksController < ApplicationController
	def index
		# @links = Link.all
	end
	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			flash[:notice] = "Link has been created"
			redirect_to @link
		else
		end

	end

	def show
		@link = Link.find(params[:id])
	end

end
