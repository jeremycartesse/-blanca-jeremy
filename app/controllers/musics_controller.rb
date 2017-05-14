class MusicsController < ApplicationController
  def index
    @musics = Music.includes(:user).all
  end

  def show
    @music = Music.find(params[:id])
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    @music.user_id = current_user.id
    if @music.save
      redirect_to musics_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    redirect_to musics_path
  end

  private

  def music_params
    params.require(:music).permit(:name, :link, :comment)
  end
end

