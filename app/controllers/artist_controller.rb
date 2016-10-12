class ArtistController < ApplicationController

  def artist
    @artist ||= Artist.find(params[:id].to_i)
  end

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
    artist.destroy
    redirect_to artist_path
  end

private
 def artist_params
   params.require(:artist).permit( :name )
 end
end
