before do
  if logged_in?
    @user = User.find(session[:id])
  end
end

get '/users/login' do
  erb :"users/login"
end

post '/users/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:id] = @user.id
    redirect '/'
  else
    @errors = ["Sorry, the credentials do not match."]
    erb :'users/login'
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end
