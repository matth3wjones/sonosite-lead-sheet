before do
  if logged_in?
    @user = User.find(session[:id])
  end
end

get '/leads/new' do
  if logged_in?
    erb :'leads/new'
  else
    redirect '/'
  end
end

post '/leads' do
  puts params
  @lead = Lead.create(params[:lead])
  if @lead.persisted?
    redirect "/leads/#{@lead.id}"
  else
    @errors = @lead.errors.full_messages
    erb :'/leads/new'
  end
end

get '/leads/:id' do
  @lead = Lead.find(params[:id])
  erb :'leads/profile'
end
