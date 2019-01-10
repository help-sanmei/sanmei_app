class TeamsController < ApplicationController
  
  def new
    @team = Team.new
    # @team.staffs.build
    3.times { @team.staffs.build }
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "チーム、スタッフ登録完了"
      redirect_to root_url
    else
      render new_team_path
    end
    
  end
  
  def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
  end
  
  private
    def team_params
          params.require(:team).permit(
          :team_name, :team_description, :max_number,
            staffs_attributes: [:id, :family_name, :first_name, :gender, :birthday, :_destroy]
          )
    end
  
  
end
