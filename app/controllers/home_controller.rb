class HomeController < ApplicationController
  def index
    redirect_to copies_path if user_signed_in?
  end
end
