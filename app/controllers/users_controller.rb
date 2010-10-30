class UsersController < ApplicationController
before_filter :authenticate_user!
  def view_posts
    @user = current_user

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
end
