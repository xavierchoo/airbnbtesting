class AppointmentController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :authorize
	def index
		@appointments = Appointment.all

	end

	def new
		@appointment = Appointment.new
	end

	def create
		if appointment_params != ''

			@appointment = Appointment.new(appointment_params)

			if @appointment.save
				redirect_to '/appointment'
			else
				redirect_to '/appointment_new'
			end

		else
			render '/appointment_new'
		end
	end

	private

		def appointment_params
		  params.permit(:name ,:email,:phone, :product_id )
		end

end
