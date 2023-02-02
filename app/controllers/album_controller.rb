class AlbumController < ApplicationController
  before_action :require_online
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
        redirect_to @album
    else
        render :new
    end
  end
  
  private
  
  def album_params
    params.require(:album).permit(:name, :album_type_id, :release_date, :label_id, :avatar)
  end
    def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
