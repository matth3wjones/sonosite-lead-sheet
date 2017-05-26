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

get '/leads/export' do
  puts "\n\n\n\n"
  Lead.to_csv
  redirect '/'
end

get '/leads/:id' do
  @lead = Lead.find(params[:id])
  erb :'leads/profile'
end

get '/leads/:id/edit' do
  @lead = Lead.find(params[:id])
  erb :'leads/edit'
end

put '/leads/:id' do
  @lead = Lead.find(params[:id])
  @lead.update(params[:lead])
  redirect "/leads/#{@lead.id}"
end

delete '/leads/:id' do
  @lead = Lead.find(params[:id])
  @lead.destroy
  redirect '/'
end
