class UploadsController < ApplicationController

  before_action :authenticate_user, {only: [:new, :create, :edit, :update]}

  def new
    @upload = Upload.new
  end


  def create
    @upload = Upload.new(
      artist: params[:artist],
      title: params[:title],
      comment: params[:comment],
      user_id: @current_user.id,
      file: params[:file]
    )
     @upload.id=DateTime.now
        @upload.file ="#{@upload.id}.mp3"
        file = params[:file]
        File.binwrite("public/file/#{@upload.file}",file.read)

      if @upload.save
        redirect_to("/")
      else
        render("uploads/new")
      end
  end

  def index
    @uploads = Upload.all.order(created_at: :desc)
    @upload = Upload.new
    # @upload.user_id = User.find_by(id: @upload.user_id)



  end

  def edit
     @upload = Upload.find_by(id: params[:id])
  end

  def update
    @upload = Upload.find_by(id:params[:id])
    @upload.comment = params[:comment]
    @upload.save
     redirect_to("/uploads/index")
  end

  def destroy

    @upload = Upload.find_by(id:params[:id])
    @upload.destroy

     redirect_to("/uploads/index")
  end

  def audio_tag(*sources)
      multiple_sources_tag('audio', sources)
  end

end
