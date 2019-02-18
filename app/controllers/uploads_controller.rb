class UploadsController < ApplicationController
  def new
  end

  def index
    @uploads = Upload.all
  end

  def create
    @upload = Upload.new(
      artist: params[:artist],
      title: params[:title],
      comment: params[:comment],
      file: params[:file]
    )
      if @upload.save
        redirect_to("/")
      else
        render("uploads/new")
      end
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

end
