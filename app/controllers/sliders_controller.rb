class SlidersController < ApplicationController
  before_filter :require_role_admin, :only => [:edit, :update]
  def edit
  @slider = Slider.first_or_create!
  end

  def update
    Slider.first.update_attributes(:album_id => params[:slider][:album_id])
    redirect_to root_path ,:notice =>  "Slider album changed"
  end
end
