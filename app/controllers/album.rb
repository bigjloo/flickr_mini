require 'byebug'

get '/album/:id' do
  @album= Album.find(params[:id])
  erb :album_show
end

get '/album/:album_id/:photo_id' do
  @photo= Photo.find(params[:photo_id])
  erb :photo
end

post '/album/:album_id' do

  @album = Album.find params[:album_id]
  @new_photo = @album.photos.create(params[:photo])
  @new_photo.update_attributes(title: params[:title])
    # @photo = current_user.albums.find(params[:id]).photos.new()
    # @photo.filename = params[:image]
    # if @photo.save
    #   redirect to "/album/#{params[:id]}"
    # else
    #   redirect to '/'
    # end
    # File.open('public/' + params['myFile'][:filename], "w") do |f|
    #   f.write(params['myFile'][:tempfile].read)
    # end
    # return "The file was successfully uploaded!"
    erb :album_show
end