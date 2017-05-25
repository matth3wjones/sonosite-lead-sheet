before do
  if logged_in?
    @user = User.find(session[:id])
  end
end

get '/users/new' do
  if logged_in?
    redirect '/'
  end
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  if session[:id] != params[:id].to_i
    erb :'users/login'
  else
    erb :'users/profile'
  end
end
