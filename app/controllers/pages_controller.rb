# The pages controller contains all of the ode for any page inside of /pages
class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirects to 404 (root for now)
      redirect_to root_path, :notice => "User not found!"
    end
  end

  def explore
  end
end
