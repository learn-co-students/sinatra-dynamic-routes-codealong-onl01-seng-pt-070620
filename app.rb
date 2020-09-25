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
    @name = params[:name]
    "Goodbye, #{@name}."
  end 

  get "/multiply/:num1/:num2" do 
    @product_1 = params[:num1]
    @product_2 = params[:num2]

    #why can't i do this the following?
    # @product = params[:num1, :num2]

    #solution 1 - convert to i, do the math, convert to s
    # final_product_1 = "#{@product_1}".to_i * "#{@product_1}".to_i
    # final_product_1.to_s
    # final_product_2 = "#{@product_2}".to_i * "#{@product_2}".to_i
    # final_product_2.to_s

    #solution 2
    #"#{params[:num1].to_i * params[:num2].to_i}"

    #solution 3 works!!!
    "#{@product_1.to_i * @product_2.to_i}"
  end 

end