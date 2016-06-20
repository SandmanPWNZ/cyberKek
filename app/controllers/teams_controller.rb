class TeamsController < ApplicationController
before_action :find_team, only: [:edit, :show, :destroy, :update]
before_action :authenticate_user!, except: [:index, :show]

    def index
      @teams = Team.all
    end

    def new
      @team = Team.new
    end

    def create
      @team = Team.create(team_params)
      if @team.save
        redirect_to @team
      else
        redirect_to 'new'
      end
    end

    def update
      if @team.update(team_params)
        @team.save
        redirect_to @team
      else
        render 'edit'
      end
    end

    def show
      @players = Team.players
      @tournaments = Tournament.find(params[:team_id])
    end


    private
      def find_team
        @team = Team.find(params[:id])
      end

      def team_params
        params.require(:team).permit(:name, :players, :tournament_id, :team_logo, :won, :discipline)
      end
end
