post '/session/login' do
  if @authentication_user = User.find_by_name(params[:name])
    if @authentication_user.password == params[:password]
      session[:user_id] = @authentication_user.id
      redirect to "/user/#{@authentication_user.id}/albums"
    else
      redirect to "/user/login?error='Wrong Password'"
    end
  else
    redirect to "/user/login?error='User does not exist'"
  end
end

get '/session/logout' do
  session[:user_id] = nil
  redirect to '/'
end