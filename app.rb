require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
  	
  	params[:name].reverse
  	
  end

  get "/square/:number" do
  	(params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
  	@str = "" 
  	params[:number].to_i.times do
  		@str += params[:phrase]
  	end
  	@str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  	@str = "" 
  	 params.to_a.each do |p|
  	 	@str += p[1] + " "
  	 end
  	@str.rstrip! + "."
  end

  get "/:operation/:number1/:number2" do
  	# add, subtract, multiply or divide
  	case params[:operation]
  	when "add"
  		return (params[:number1].to_i + params[:number2].to_i).to_s
  	when "subtract"
  		return (params[:number1].to_i - params[:number2].to_i).to_s
	when "multiply"
  		return (params[:number1].to_i * params[:number2].to_i).to_s
  	when "divide"
  		return (params[:number1].to_i / params[:number2].to_i).to_s
  	end
  		
  end
end