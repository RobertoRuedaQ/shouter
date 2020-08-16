class ShoutsController < ApplicationController
  def create
    shout = current_user.shouts.create(shout_params)
    redirect_to root_path, redirect_options_for(shout)
  end



  private

  def shout_params
    params.require(:shout).permit(:body)
  end

  def redirect_options_for(shout)
    if shout.persisted?
      {notice: "Shouted persisted!"}
    else
      {alert: "Couldn't shout"}
    end
  end
end
