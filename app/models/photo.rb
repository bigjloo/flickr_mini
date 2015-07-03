class Photo < ActiveRecord::Base
  # Remember to create a migration!
  mount_uploader :filename, Uploader
  belongs_to :album
end
