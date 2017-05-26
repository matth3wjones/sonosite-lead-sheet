before do
  if logged_in?
    @user = User.find(session[:id])
  end
end

get '/' do
  if logged_in?
    @leads = Lead.all
  end
  erb :index
end
