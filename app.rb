require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number]
    @phrase = params[:phrase]
    # binding.pry
    str = ""
    @num.to_i.times do 
       str << "#{@phrase} "
    end
    str.strip
    # binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i
    @op = params[:operation]
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end
  end
end