class FileUploadsController < ApplicationController
  def index
    @file_uploads = FileUpload.all
  end

  def import
    new_upload = FileUpload.create!
    Purchase.import(params[:file], new_upload)
    redirect_to root_path
  end
end