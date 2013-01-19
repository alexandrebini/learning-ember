class PhotosController < ApplicationController
  def index
    render json: Photo.all
  end

  def show
    render json: Photo.find(params[:id])
  end

  def create
    photo = Photo.new(params[:photo])
    if photo.save
      render json: photo
    else
      render json: { errors: photo.errors }, status: 422
    end
  end

  def update
    photo = Photo.find(params[:id])
    if photo.update_attributes(params[:photo])
      render json: photo
    else
      render json: { errors: photo.errors }, status: 422
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    if photo.destroy
      render json: photo, staus: 204
    else
      render json: { errors: photo.errors }, status: 422
    end
  end
end