before do
  if logged_in?
    @user = User.find(session[:id])
  end
end

get '/' do
  erb :index
end
