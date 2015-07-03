get '/user/login' do
  @error= params[:error]
  @success= params[:success]
  erb :user_login_signup
end

post '/user' do
  @new_user= User.new(params[:user])
  if @new_user.save
    Album.default(@new_user.id)
    redirect to "/user/login?success='Account Successfully Created'"
  else
    redirect to "/user/login?error='Account Creation Fail'"
  end
end

get '/user/:id/albums' do
  authenticate
  erb :user_albums
end