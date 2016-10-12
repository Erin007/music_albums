class ArtistController < ApplicationController
  def index
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
    @artist =Artist.new
    @artist.name = params[:artist][:name]
    
    if @artist.save
      redirect_to :action => "show", :id => @artist.id
    end

  end

  def update
  end

  def destroy
  end
end
