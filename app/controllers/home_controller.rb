class HomeController < ApplicationController
	def index
	end

	def convert
		# get the value the user entered for farhenheit
		fahrenheit = params[:fahrenheit]

		#be sure to convert the string to a number with .to_f
		fahrenheit = fahrenheit.to_f

		# call the function to convert the fahrenheit value to celsius
		celsius = convert_to_celsius(fahrenheit)

		# be sure to round the result
		celsius = celsius.round

		# build the message to return using Ruby's awesome thing called String Interpolation
		message = "the celsius result is #{celsius}"

		# send the message back to the view
		@message = message

		@my_name = "Michael"
	end

	# this function converts the given value (farhenheit) to celcius and returns it
	def convert_to_celsius(fahrenheit)

		# convert the given value (farhenheit) to celcius using the formula
		celsius = (fahrenheit - 32) * 5.0 / 9.0

		# return the celsius value back to the caller
		return celsius
	end
end
