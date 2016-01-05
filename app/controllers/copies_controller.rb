class CopiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @copies = Copy.all
  end

  def show
      
    end

  def new
    @copy = Copy.new
  end

  def create
    copies = params[:copy][:game_id]
    copies.each do |id|
      if id.length > 0
        current_user.copies.create(game_id: id.to_i, user_id: current_user.id)
      end
    end
    
    redirect_to copies_path
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
