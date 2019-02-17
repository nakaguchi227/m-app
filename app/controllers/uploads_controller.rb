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
end
