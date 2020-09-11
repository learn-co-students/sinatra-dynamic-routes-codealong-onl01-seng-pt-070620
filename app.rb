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

  get "/goodbye/:name" do
    @username = params[:name]
    "Goodbye, #{@username}."
  end

  get '/multiply/:x/:y' do
    @total = params[:x].to_i * params[:y].to_i
    "#{@total}"
  end

  # Code your final two routes here:

end