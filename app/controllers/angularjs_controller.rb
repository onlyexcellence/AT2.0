class AngularjsController < ApplicationController

	def index

		list = ['blank']
		list.delete 'blank'

		page = params[:page] if list.include?(params[:page])

		valid = list.include? params[:page]

		if valid

			render page,layout: false

		else

			render json: {},status: 404

		end

	end

end