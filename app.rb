require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get '/reversename/:name'
    @name = params[:name]
    "#{@name.reverse}"
end
