class FileUploadsController < ApplicationController
  def index
    @file_uploads = FileUpload.all
  end

  def import
    if params[:file].present?
      new_upload = FileUpload.create!
      Purchase.import(params[:file].path, new_upload)
      redirect_to root_path
    else
      flash[:alert] = "Please select a file to attach"
      redirect_to root_path
    end
  end
end