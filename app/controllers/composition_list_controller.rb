class CompositionListController < ApplicationController
 before_action :require_online
    def new
    @composition_list = CompositionList.new
  end

  def create
    @composition_list = CompositionList.new(composition_list_params)
    if @composition_list.save
        redirect_to @composition_list
    else
        render :new
    end
  end
  
  private
  
  def composition_list_params
    params.require(:composition_list).permit(:composition_id, :album_id, :person_id, :artist_id, :position_number)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
