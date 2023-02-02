class LabelController < ApplicationController
  before_action :require_online
    def new
    @label = Label.new
  end

  def create
    @label = Label.new(label_params)
    if @label.save
        redirect_to @label
    else
        render :new
    end
  end
  
  private
  
  def label_params
    params.require(:label).permit(:name, :country_id, :foundation_date, :end_existing_date, :avatar)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
