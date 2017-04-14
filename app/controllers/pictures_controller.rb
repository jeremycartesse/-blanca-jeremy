class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @picture = Picture.new
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  private

  def music_params
    params.require(:picture).permit(:picture_name)
  end
end
