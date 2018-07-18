class AppointmentController < ApplicationController
	skip_before_action :verify_authenticity_token
	def new
		@appointment = Appointment.new
	end

	def create
		if appointment_params != ''

			@appointment = Appointment.new(appointment_params)

			if @appointment.save
				redirect_to '/appointment'
			else
				redirect_to '/new'
			end

		else
			render 'new'
		end
	end

	private

		def appointment_params
			# params.permit(:title , :description ,:image_link)
		end

end
