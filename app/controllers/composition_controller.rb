class CompositionController < ApplicationController
  before_action :require_online
    def new
    @composition = Composition.new
  end

  def create
    @composition = Composition.new(composition_params)
    @composition.duration = '00:' + composition_params[:duration]
    if @composition.save
        redirect_to @composition
    else
        render :new
    end
  end
  
  private
  
  def composition_params
    params.require(:composition).permit(:name, :duration, :genre_id, :release_date, :lyrics)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
