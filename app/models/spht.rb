class Spht < ActiveRecord::Base
   mount_uploader :file, PictureUploader
end
