require "sinatra"
require_relative "new_isbn.rb"

get "/" do
	erb :get_isbn
end

post "/isbn" do
  isbn = params[:isbn_number]
  result = valid_isbn_10_or_13(isbn)
  	if result == true
  		result = "Valid"
  	else result == false
  		result = "Invalid"
  	end

	"Your isbn number is #{result}"
end