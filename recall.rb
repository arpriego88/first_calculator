require 'rubygems'
require 'sinatra'


get '/' do
  erb :calculator
end

post '/' do 
  first_number = params["first_number"].to_i
  second_number = params["second_number"].to_i
  operator = params["operator"]
  case operator
  when "add"
    @answer = first_number + second_number
  when "subtract"
    @answer = first_number - second_number
  when "multiply"
    @answer = first_number * second_number
  when "divide"
    @answer = first_number / second_number
  end
  erb :calculator
  # "<h1>#{first_number} #{operator} #{second_number} is #{answer}</h1>"
end