require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = []
    @phrase << params[:phrase]
    @phrase.cycle(@num).to_a.join(' ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = []
    @phrase << params[:word1]
    @phrase << params[:word2]
    @phrase << params[:word3]
    @phrase << params[:word4]
    @phrase << params[:word5]
    @phrase.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @a = params[:number1].to_i
    @b = params[:number2].to_i

    if @op == "add"
      (@a + @b).to_s
    elsif @op == "subtract"
      (@a - @b).to_s
    elsif @op == "multiply"
      (@a * @b).to_s
    elsif @op == "divide"
      (@a / @b).to_s
    end
  end
end