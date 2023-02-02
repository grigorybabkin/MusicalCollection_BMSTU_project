class ArtistController < ApplicationController
  before_action :require_online
    def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
        redirect_to @artist
    else
        render :new
    end
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :type_band, :avatar, :bio)
  end
    def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
