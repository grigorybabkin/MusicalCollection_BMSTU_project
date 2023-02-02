class MusicStorageController < ApplicationController
  before_action :require_online
    def new
    @music_storage = MusicStorage.new
  end

  def create
    @music_storage = MusicStorage.new(music_storage_params)
    if @music_storage.save
        redirect_to @music_storage
    else
        render :new
    end
  end
  
  private
  
  def music_storage_params
    params.require(:music_storage).permit(:name, :storage_type_id, :company_id, :rack, :shelf, :section, :cell)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
