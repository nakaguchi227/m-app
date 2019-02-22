class Upload < ApplicationRecord

  # mount_uploader :file, UploadUploader

  validates :artist, {presence:true}
  validates :title, {presence:true}
  validates :comment, {presence:true}
  validates :file, {presence:true}
  validates :user_id, {presence: true}

  # def user
  #    @upload.user_id = User.find_by(id: @upload.user_id)
  # end

end
