class Upload < ApplicationRecord

  # mount_uploader :file, UploadUploader

  validates :artist, {presence:true}
  validates :title, {presence:true}
  validates :comment, {presence:true}
  validates :file, {presence:true}

end
