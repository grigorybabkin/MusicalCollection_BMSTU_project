class ArtistListController < ApplicationController
  before_action :require_online
    def new
    @artist_list = ArtistList.new
  end

  def create
    @artist_list = ArtistList.new(artist_list_params)
    if @artist_list.save
        redirect_to @artist_list
    else
        render :new
    end
  end
  
  private
  
  def artist_list_params
    params.require(:artist_list).permit(:artist_id, :person_id, :debut_year, :end_year)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
