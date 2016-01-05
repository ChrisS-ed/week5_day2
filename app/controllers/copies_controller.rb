class CopiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @copies = Copy.all
  end

  def show
      
    end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update

  end

  private
  def copy_params
   params.require(:copy).permit(:game_id)
 end

end
