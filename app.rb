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
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  get "/multiply/:number1/:number2" do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    ans = num_1 * num_2
    ans.to_s

  end

end