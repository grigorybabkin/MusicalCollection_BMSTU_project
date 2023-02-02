class StorageListController < ApplicationController
  before_action :require_online
    def new
    @storage_list = StorageList.new
  end

  def create
    @storage_list = StorageList.new(storage_list_params)
    if @storage_list.save
        redirect_to @storage_list
    else
        render :new
    end
  end
  
  private
  
  def storage_list_params
    params.require(:storage_list).permit(:music_storage_id, :album_id, :production_year)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
