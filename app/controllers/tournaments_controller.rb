class TournamentsController < ApplicationController
before_action :find_tournament, only: [:edit, :show, :destroy, :update]
before_action :authenticate_user!, except: [:index, :show]

  def index
    @tournaments = Tournament.all
  end

  def show
    @teams_array = @tournament.team.split(' ').shuffle.each_slice(2).to_a
  end
  def grid
    @teams_grid_array = @teams_array
  end
  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.create(tournament_params)
    if @tournament.save
      redirect_to @tournament
    else
      render 'new'
    end
  end

  def update
    if @tournament.update(tournament_params)
      redirect_to @tournament
    else
      render 'edit'
    end
  end

  private
    def find_tournament
      @tournament = Tournament.find(params[:id])
    end
    def tournament_params
      params.require(:tournament).permit(:title, :team)
    end
end
