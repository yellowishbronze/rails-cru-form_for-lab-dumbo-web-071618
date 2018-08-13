class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to(song_path(@song))
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(parms[:id])

    redirect_to(songs_path)
  end

  private
  def song_params
    params.require("song").permit(:name, :song_id, :genre_id)
  end

end
