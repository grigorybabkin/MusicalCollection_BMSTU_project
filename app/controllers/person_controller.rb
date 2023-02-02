class PersonController < ApplicationController
  before_action :require_online
    def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
        redirect_to @person
    else
        render :new
    end
  end
  
  private
  
  def person_params
    params.require(:person).permit(:first_name, :last_name, :birth_date, :death_date, :country_id, :avatar)
  end
  def require_online
        if   (!user_signed_in? or current_user.admin==false)
      redirect_to(:root)
        end
    end
end
  
