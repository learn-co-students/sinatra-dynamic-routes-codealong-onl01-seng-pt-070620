require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    
    @num = params[:num1].to_i * params[:num2].to_i
    
    "#{@num}."
    # binding.pry
  end
  
  # get "/multiply/:num1/:num2" do
  #   @num = params[:num1/:num2]
  #   # "#{@num}!"
  # end

  # get "/multiply/:num1/:num2" do
  #   @num = params[:num1/:num2]
  #   # "#{@num}!"
  # end

  # get '/medicines/:id' do
  #   @medicine = all_the_medicines.select do |medicine|
  #     medicine.id == params[:id]
  #   end.first
  #   erb :'/medicines/show.html'
  # end

end